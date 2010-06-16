require 'test_helper'
require 'performance_test_help'

class EpisodeTest < ActionController::PerformanceTest
  def test_index
    get '/episodes'
  end
  
  def test_show
    get '/episodes/1'
  end
end
