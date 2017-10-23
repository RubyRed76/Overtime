# require 'rails_helper'

# RSpec.describe User, type: :model do
#   #pending "add some examples to (or delete) #{__FILE__}"
# end
require 'rails_helper'

# RSpec.describe User, type: :model do
# 	describe "creation" do
# 	#When you use “describe” in rspec, it is essentially a way of organizing your tests.  
# 	#I’m going to first make sure that a user can be created:
# 		it "can be created" do
# 			user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
# 			expect(user).to be_valid
# 		end
# 	end

#Let's "Refactor" this a little:
# - Create a "before do" block
# - Create an instance variable @user
# - Give our "it" block access to the new @user variable

RSpec.describe User, type: :model do
	describe "creation" do
		before do
			@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
		end	

		it "can be created" do
			expect(@user).to be_valid
		end

		it "cannnot be created without first_name, last_name" do
			#Here we'll take our @user, 
			#- then take our first_name set it to nil because it's currently set to "Jon"
			@user.first_name = nil
			@user.last_name = nil
			#... if this is the case, we're going to expect this to not be valid
			expect(@user).to_not be_valid
		end

	end

end # end RSpec.describe User




