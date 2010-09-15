require 'test/unit'
$: << File.join(File.dirname(__FILE__) + '/../lib' )
require 'hijri.rb'


class HijriTest < Test::Unit::TestCase
  def test_georigean_converter  
    (1..12).each do |m|
      (1..30).each do |d|
        date = "#{d}#{m}2010"
        date_converted = Hijri.absolute2gregorian(Hijri.gregorian2absolute(d, m, 2010)).join
        assert(date == date_converted, "Faild: #{date} not equal to #{date_converted}")
      end
    end
  end
  
  # def test_test
  #   assert(false, "Assertion test faild")
  # end
end