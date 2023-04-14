require 'test/unit'

class TestVersion < Test::Unit::TestCase
  def test_version
    assert_equal("0.0.1", GroongaBenchmark::Version)
  end
end
