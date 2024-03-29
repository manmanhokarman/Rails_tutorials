require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "Should have the h1 'Sample app'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text: 'Sample App')
    end

    it "Should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "Should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text: 'Help')
    end

    it "Should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title', text: "#{base_title} | Help")
    end
  end

  describe "About us page" do
    it "Should have the h1 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text: 'About us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "#{base_title} | About us")
    end
  end

  describe "Contact page" do 
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector('title', text: "#{base_title} | Contact")
    end
  end

end
