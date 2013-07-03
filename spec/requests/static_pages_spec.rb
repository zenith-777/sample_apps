require 'spec_helper'

describe "StaticPages" do
    #describe "GET /static_page"
 
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
   describe "Home page" do
    it "should have the h1 'Sample Apps'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample Apps')
    end
  it "should have the right title" do
    visit '/static_pages/home'
    page.should have_selector('h1',
                    :title => "#{base_title} | Home")
    end
  it "should not have a custom page title" do
    visit '/static_pages/home'
    page.should_not have_selector('title', :text => '| Home')
  end
  end
  
  describe "Help page" do
  it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
  it "should have the right title" do
    visit '/static_pages/help'
    page.should have_selector('h1',
                    :title => "#{base_title} | Help")
    end
   it "should not have a custom page title" do
      visit '/static_pages/help'
      page.should_not have_selector('title', :text => '| Help')
    end
  end
  
  describe "About page" do
  it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
  
  it "should have the right title" do
    visit '/static_pages/about'
    page.should have_selector('h1',
                    :title => "#{base_title} | About Us")
    end
   it "should not have a custom page title" do
      visit '/static_pages/about'
      page.should_not have_selector('title', :text => '| About Us')
    end
  end
  
  describe "Contact page" do
  it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
  
  it "should have the right title" do
    visit '/static_pages/contact'
    page.should have_selector('h1',
                    :title => "#{base_title} | Contact Us")
    end
   it "should not have a custom page title" do
      visit '/static_pages/contact'
      page.should_not have_selector('title', :text => '| Contact Us')
    end
  end
end