# -*- coding: utf-8 -*-
require 'spec_helper'

describe Doc do

  let(:doc) { FactoryGirl.build(:doc) }

  specify "妥当なオブジェクト" do
    expect(doc).to be_valid
  end

  specify "titleは空欄であってはいけない" do
    doc[:title] = ""
    expect(doc[:title]).not_to be_present
  end

  specify "contentは１４０文字以上であってはいけない" do
    doc[:content] = ""
    expect(doc[:content]).not_to be_present
    doc[:content] = "あ" * 1000
    expect(doc).not_to be_valid
  end

end
