require 'test_helper'

class AddUserTest < ActionDispatch::IntegrationTest
  test 'adding a user happens' do
    post users_path, params: { user: { name: "user name" } }

    assert_equal 'user name', User.last.name
  end
end
