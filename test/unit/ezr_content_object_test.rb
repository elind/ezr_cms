require './test/test_helper'

class EzrContentObjectTest < ActiveSupport::TestCase
  
  def test_attributes
    co = ezr_content_objects(:sheet_music_symphony_in_c)
    assert_equal 4, co.c_attributes.size
  end
  
  def test_array_access
    co = ezr_content_objects(:sheet_music_symphony_in_c)
    assert_equal "Symphony in C", co.data(:title)
    assert_equal 5.34, co.data(:length)
    assert_equal 45671, co.data(:serial)
    assert_equal "This is the description.", co.data(:description)
    assert_nil co.data(:non_existent_key)
  end
end
