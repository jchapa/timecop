module DateStrptimeYearBoundaryScenarios
  #calling freeze and travel tests are making the date Time.local(1992,1,1)

  # Test for wday
  def test_date_strptime_year_boundary_with_day_of_week
    assert_equal Date.strptime('Thursday', '%A'), Date.new(1992, 1, 2)
    assert_equal Date.strptime('Monday', '%A'), Date.new(1991, 12, 30)
  end

  # Test for cwday
  def test_date_strptime_year_boundary_with_iso_day_of_week
    assert_equal Date.strptime('4', '%u'), Date.new(1992, 1, 2)
    assert_equal Date.strptime('1', '%u'), Date.new(1991, 12, 30)
  end

  # Test for wnum1
  def test_date_strptime_year_boundary_with_wnum1
    assert_equal Date.strptime('52', '%W'), Date.new(1992, 12, 28)
    assert_equal Date.strptime('1', '%W'), Date.new(1992, 01, 6)
  end

  # Test for wnum0
  def test_date_strptime_year_boundary_with_wnum0
    assert_equal Date.strptime('52', '%U'), Date.new(1992, 12, 27)
    assert_equal Date.strptime('1', '%U'), Date.new(1992, 01, 5)
  end

  # Test for cweek
  def test_date_strptime_year_boundary_with_cweek
    # TODO: year-ambiguous cweek is not handled correctly during year boundaries:
    #  assert_equal Date.strptime('52', '%V'), Date.new(1992, 12, 21)
    #  assert_equal Date.strptime('52', '%V'), Date.new(1991, 12, 30)
    assert_equal Date.strptime('52', '%V'), Date.new(1992, 12, 28)
    assert_equal Date.strptime('1', '%V'), Date.new(1992, 01, 6)
  end
end