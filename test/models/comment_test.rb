require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:bob)
    #@post = @user.posts.create(user: @user, title: "a post", content: "some content")
    @post = Post.create!(user: @user, title: "a post", content: "some content")
    @comment = @post.comments.create!(user: @user, content: "This is a comment")
    Rails::logger.debug @comment.inspect
  end
  test "comment should be valid" do
    #@comment.content = "hi there"
    assert @comment.valid?
  end
  test "comment should be present" do
    @comment.content = ""
    assert_not @comment.valid?
  end

end
