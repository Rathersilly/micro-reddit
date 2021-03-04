require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:bob)
    @post = @user.posts.build(title: "the end is nigh",
                              content: "Chthulu ftagn!")
  end
  test "should be valid" do
    assert @post.valid?
  end
  test "title present and acceptable size" do
    @post.title = ''
    assert_not @post.valid?
    @post.title = "a" * 101
    assert_not @post.valid?
  end
  test "content present and acceptable size" do
    @post.content = ''
    assert_not @post.valid?
    @post.content = "a" * 501
    assert_not @post.valid?
  end

    


end
