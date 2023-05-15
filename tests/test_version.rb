require 'test/unit'
require '../lib/groonga-benchmark'

class TestVersion < Test::Unit::TestCase
  def test_tool_version
    assert_equal("0.0.1", GroongaBenchmark::VERSION)
  end

  def test_groonga_version
    groonga = GroongaBenchmark::Server.new()
    groonga.run()
    groonga_latest_vserion = xxxx

    assert_equal(groonga_latest_version, groonga.version())

    groonga.shutdown()
  end
end
