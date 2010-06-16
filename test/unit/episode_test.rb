require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  # include episode fixtures from test/fixtures/episodes.yml
  fixtures :episodes
  # and from shows.yml
  fixtures :shows

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

  test "add episode to show" do
    vmars_pilot = episodes(:veronica_mars_pilot)
    vmars_show = shows(:veronica_mars)
    assert vmars_pilot.valid?
    assert vmars_show.valid?
   
    assert vmars_show.episodes.empty?
    vmars_show.episodes << vmars_pilot
    assert_equal 1, vmars_show.episodes.size
    assert_equal vmars_show.id, vmars_pilot.show.id
  end
end
