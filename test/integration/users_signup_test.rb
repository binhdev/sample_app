require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_to_difference 'User.count' do
      post users_path, params: {user: {name: "",
        email: "user@invalid",
        password: "foo"
        password_confirmation: "bar"}}
    end
    assert_template 'users/newS'
  end
end
