require 'spec_helper'

describe "Static pages" do

	describe "Home page" do
		it "should have the h1 'Sample App' " do

			visit '/static_pages/home.html' 
			page.should have_selector('h1', 
				:text => 'Sample App')
		end
		
		it "Should have a custom title" do

			visit '/static_pages/home.html' 
			page.should have_selector('title',
				:text => 'Ruby on Rails Tutorial Sample App | Home')
		end

		it "should not have custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end		
	end


	describe "Help page" do
		it "should have the h1 'Help' " do

		visit '/static_pages/help.html' 
		page.should have_selector('h1', 
			:text => 'Help')
		end

		it "Should have a custom title" do

			visit '/static_pages/help.html' 			
			page.should have_selector('title',
				:text => 'Ruby on Rails Tutorial Sample App | Help')
		end
	end

	describe "About page" do
		it "should have the h1 'About Us' " do
			visit '/static_pages/about.html' 
			page.should have_selector('h1', 
				:text => 'About Us')
		end

		it "Should have a custom title" do

			visit '/static_pages/about.html' 			
			page.should have_selector('title',
				:text => 'Ruby on Rails Tutorial Sample App | About Us')
		end
	end

	describe "Contact page" do
		it "should have the h1 'Contact' " do
			visit '/static_pages/contact.html' 
			page.should have_selector('h1', 
				:text => 'Contact')
		end

		it "Should have a custom title" do

			visit '/static_pages/contact.html' 			
			page.should have_selector('title',
				:text => 'Ruby on Rails Tutorial Sample App | Contact')
		end
	end

end
