require './test/test_helper'

class EzrContentClassAttributesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ezr_content_class_attributes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ezr_content_class_attribute
    assert_difference('EzrContentClassAttribute.count') do
      post :create, :ezr_content_class_attribute => {
        :display_name => "New content class attribute",
        :identifier => "new_content_class attribute"
      }
    end

    assert_redirected_to ezr_content_class_attribute_path(assigns(:ezr_content_class_attribute))
  end

  def test_should_show_ezr_content_class_attribute
    get :show, :id => ezr_content_class_attributes(:tdd_content_class_attribute).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ezr_content_class_attributes(:tdd_content_class_attribute).id
    assert_response :success
  end

  def test_should_update_ezr_content_class_attribute
    put :update, :id => ezr_content_class_attributes(:tdd_content_class_attribute).id, :ezr_content_class_attribute => { }
    assert_redirected_to ezr_content_class_attribute_path(assigns(:ezr_content_class_attribute))
  end

  def test_should_destroy_ezr_content_class_attribute
    assert_difference('EzrContentClassAttribute.count', -1) do
      delete :destroy, :id => ezr_content_class_attributes(:tdd_content_class_attribute).id
    end

    assert_redirected_to ezr_content_class_attributes_path
  end
end
