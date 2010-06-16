require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users

  test "create user" do
    gabe = users(:gabe)
    assert_not_nil gabe
  end
end
