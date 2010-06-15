require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "invalid with empty attributes" do
    show = Show.new
    assert !show.valid?
    assert show.errors.invalid?(:name)
  end
end
