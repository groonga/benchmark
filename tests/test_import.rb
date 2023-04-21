require 'test/unit'
require '../lib/groonga-benchmark'

class TestImport < Test::Unit::TestCase
  def test_import_parquet
    importer = GroongaBenchmark::Importer.new("fixture/sample.parquet")
    expected = <<"DATE"
	id	 city_name	 prefectural_capitals
0	 1	 Tokyo    	 Shinjuku-ku         
1	 2	 Saitama  	 Saitama City        
2	 3	 Chiba    	 Chiba City          
DATE
    assert_equal(expected, importer.dump.to_s)
  end
end
