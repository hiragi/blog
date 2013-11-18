# -*- coding: utf-8 -*-
require 'spec_helper'

describe User do

  let(:user) { FactoryGirl.build(:user) }

  %w{username password}.each do |item|
    specify "#{item}は空欄であってはいけない" do
      user[item] = ""
#      expect(user[item]).not_to be_present
    end

    specify "#{item}は8-16字の間" do
      user[item] = "あ" * 10
#      expect(user).to be_valid
    end
  end

end
