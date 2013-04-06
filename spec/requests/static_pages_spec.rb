require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "Should have the content 'Sample app'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "Should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "Should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About us page" do
    it "Should have the content 'About us'" do
      visit '/static_pages/about'
      page.should have_content('About us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "Ruby on Rails Turorial Sample App | About us")
    end
  end
  
end
