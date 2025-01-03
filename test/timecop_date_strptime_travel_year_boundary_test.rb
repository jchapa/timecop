require_relative "test_helper"
require 'timecop'
require_relative 'date_strptime_year_boundary_scenarios'

class TestTimecop < Minitest::Test
  def setup
    t = Time.local(1992,1,1)
    Timecop.travel(t)
  end

  def teardown
    Timecop.return
  end

  # Test for Date
  include DateStrptimeYearBoundaryScenarios

end
