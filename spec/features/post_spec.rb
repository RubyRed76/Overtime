# This is essentially going to be an integration test.
# This is going to leverage Capybara, and it's going to 
# mimic what happens inside a page (in a browser) itself!!!
require 'rails_helper'

describe 'navigate' do #This empty method is our "boiler plate"
	describe 'index' do # Describe the index page
		it 'can be reached successfully' do #first just check if it can be reached..
			visit posts_path
			expect(page.status_code).to eq(200)
		end
		it 'has a title of Posts' do # check for content..
			visit posts_path
			expect(page).to have_content(/Posts/) #regular expression
		end
	end
end
