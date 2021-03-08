require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "asdf",
                     email: "example@example.com",
                     password: 'asdf',
                     password_confirmation: 'asdf')
  end

  test "should be valid" do
    assert @user.valid?
  end

  test 'password should be present' do
    @user.password = 'foobar'
    assert_not @user.valid?
  end
  


end
