require "test_helper"

class PostInterfaceTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:bob)
  end
  test "login and create post" do
    get root_url
    log_in_as(@user)
    get new_post_path
    assert_difference "Post.count" do
      post posts_path, params: {post: {title: "test post please ignore", content: "see title"}}
    end
  end

    
    


end
