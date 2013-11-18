# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Welcome" do

  describe "index" do
    it {
      visit "/"
      expect(page).to have_content("Reporter")
      expect(page).to have_content("TIMELINE")
      expect(page).to have_content("Reportする")
      
      expect(page.status_code).to be 200
    }

  end

  describe "post" do
    it {
      visit "/welcome/post"
      expect(page).to have_content('ツイート')
    }
  end
end
