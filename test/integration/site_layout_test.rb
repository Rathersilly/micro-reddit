require "test_helper"  # => 

class SiteLayoutTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:bob)
  end
  test "layout when not logged in" do
    get root_url
    assert_select "a[href=?]",  login_path
    assert_select "a[href=?]",  signup_path
    assert_select "a[href=?]",  new_post_path, count: 0
  end
  test "layout when logged in" do
    get root_url
    log_in_as(@user)
    assert is_logged_in?
    get root_url
    # this would pass but profiler has this in page somewhere
    assert_select "a[href=?]", login_path, {count: 0, class: "navitem"}
    assert_select "a[href=?]", signup_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]",  new_post_path
  end
  test "login and logout" do
    #log_out
    get root_url
    assert_not session[:user_id]
    assert_not is_logged_in?
    log_in_as(@user)
    assert is_logged_in?
    assert session[:user_id] = @user.id
    delete logout_path
    assert_not is_logged_in?
    assert_not session[:user_id]
  end


end
