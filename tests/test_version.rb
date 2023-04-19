require 'test/unit'
require '../lib/groonga-benchmark'

class TestVersion < Test::Unit::TestCase
  def test_version
    assert_equal("0.0.1", GroongaBenchmark::VERSION)
  end
end
