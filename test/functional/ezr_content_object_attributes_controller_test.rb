require 'test_helper'

class EzrContentObjectAttributesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ezr_content_object_attributes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ezr_content_object_attribute
    assert_difference('EzrContentObjectAttribute.count') do
      post :create, :ezr_content_object_attribute => { }
    end

    assert_redirected_to ezr_content_object_attribute_path(assigns(:ezr_content_object_attribute))
  end

  def test_should_show_ezr_content_object_attribute
    get :show, :id => ezr_content_object_attributes(:tdd_content_object_attribute).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ezr_content_object_attributes(:tdd_content_object_attribute).id
    assert_response :success
  end

  def test_should_update_ezr_content_object_attribute
    put :update, :id => ezr_content_object_attributes(:tdd_content_object_attribute).id, :ezr_content_object_attribute => { }
    assert_redirected_to ezr_content_object_attribute_path(assigns(:ezr_content_object_attribute))
  end

  def test_should_destroy_ezr_content_object_attribute
    assert_difference('EzrContentObjectAttribute.count', -1) do
      delete :destroy, :id => ezr_content_object_attributes(:tdd_content_object_attribute).id
    end

    assert_redirected_to ezr_content_object_attributes_path
  end
end
