require 'rails_helper'

RSpec.describe Post, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "Creation" do
  	before do
  		@post = Post.create(date: Date.today, rationale: "Anything")
  	end

  	it 'can be created' do
  		# post = Post.create(date: Date.today, rationale: "Anything")
  		expect(@post).to be_valid
  	end

  	it 'cannot be created without a date and rationale' do
  		#just like we did with Users, we'll now create a before do block above
  		# with an instance variable @post....
  		@post.date = nil
  		@post.rationale = nil
  		# expect(@post).to be_valid
  		expect(@post).to_not be_valid
  	end
  end
end
