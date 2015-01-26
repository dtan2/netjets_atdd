require 'helper'

class AboutNil < Test::Unit::TestCase
  def test_nil_is_not_the_same_as_null
    assert_equal false, nil.is_a?(Object), "Unlike NULL in other languages"
  end

  def test_nil_has_a_few_methods_defined_on_it
    assert_equal false, nil.nil?
    assert_equal true, nil.to_s
  end

end
