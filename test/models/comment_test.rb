require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:bob)
    @comment = @user.comments.build(content: "This is a comment")
  end
  test "comment should be valid" do
    assert @comment.valid?
  end
  test "comment should be present" do
    @comment.content = ""
    assert_not @comment.valid?
  end

end
