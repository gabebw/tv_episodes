require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "invalid with empty attributes" do
    episode = Episode.new
    assert !episode.valid?
    assert episode.errors.invalid?(:season)
    assert episode.errors.invalid?(:number)
    assert episode.errors.invalid?(:name)
  end

  test "season and episode number must be numbers" do 
    episode = Episode.new(:season => 'a', :number => 'a', :name => 'fff')
    assert !episode.valid?
    assert_equal "is not a number", episode.errors.on(:season)
    assert_equal "is not a number", episode.errors.on(:number)
  end
end
