require './test/test_helper'

class EzrContentClassTest < ActiveSupport::TestCase
  
  ## td: Add validation and test for identifier format
  def test_sheet_music_class
    cc = ezr_content_classes(:sheet_music)
    assert_equal "Sheet music", cc.display_name
    assert_equal [ezr_content_class_attributes(:sheet_music_title)], cc.cc_attributes
  end
end
