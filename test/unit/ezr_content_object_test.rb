require './test/test_helper'

class EzrContentObjectTest < ActiveSupport::TestCase
  
  def test_attributes
    co = ezr_content_objects(:sheet_music_symphony_in_c)
    assert_equal [ezr_content_object_attributes(:symphony_in_c_title)], co.c_attributes
  end
  
  def test_array_access
    co = ezr_content_objects(:sheet_music_symphony_in_c)
    assert_equal "Symphony in C", co[:title]
    assert_equal 5.34, co[:length]
    assert_equal 45671, co[:serial]
    assert_equal "This is the description.", co[:description]
    assert_nil co[:non_existent_key]
  end
end
