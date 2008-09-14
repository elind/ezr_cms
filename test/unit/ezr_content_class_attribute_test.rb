require './test/test_helper'

class EzrContentClassAttributeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  ## td: Add validation and test for identifier format
  def test_content_class
    assert_equal ezr_content_classes(:tdd_content_class), ezr_content_class_attributes(:tdd_content_class_attribute).content_class
  end
end
