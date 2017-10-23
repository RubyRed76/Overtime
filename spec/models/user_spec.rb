# require 'rails_helper'

# RSpec.describe User, type: :model do
#   #pending "add some examples to (or delete) #{__FILE__}"
# end
require 'rails_helper'

RSpec.describe User, type: :model do
	describe "creation" do
		it "can be created" do
			user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
			expect(user).to be_valid
		end
	end

############## LOOKS LIKE SAME THING TO ME BUT NOT WORKING!!! ##################################
# RSpec.describe User, type: :model do
#   describe “creation” do
# 		it “can be created” do
# 			user = User.create(email: “test@test.com”,  password: “asdfasdf”, password_confirmation: “asdfasdf”)
# 			expect(user).to be_valid
# 		end
#   end



	#When you use “describe” in rspec, it is essentially a way of organizing your tests.  
	#I’m going to first make sure that a user can be created:

end




