require 'test_helper'

class PostTest < ActiveSupport::TestCase
	
	def setup
		@post= Post.new(url:'www.youtube.com', body:'website with videos', 
										user_id:'1')
	end

	test "should be valid" do
		assert @post.valid?
	end

	test "url should be present" do
		@post.url = " "
		assert_not @post.valid?
	end

	test "body should be present" do
		@post.body = " "
		assert_not @post.valid?
	end

	test "user_id should be present" do
		@post.user_id = ""
		assert_not @post.valid?
	end

end
