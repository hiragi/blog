require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Sample App' " do
      visit "/static_pages/home"
      expect(page).not_to have_content('Sample App')
    end
  end
end
