require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "asdf",
                     email: "example@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end
  


end
