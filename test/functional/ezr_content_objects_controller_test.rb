require 'test_helper'

class EzrContentObjectsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ezr_content_objects)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ezr_content_object
    assert_difference('EzrContentObject.count') do
      post :create, :ezr_content_object => { }
    end

    assert_redirected_to ezr_content_object_path(assigns(:ezr_content_object))
  end

  def test_should_show_ezr_content_object
    get :show, :id => ezr_content_objects(:tdd_content_object).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ezr_content_objects(:tdd_content_object).id
    assert_response :success
  end

  def test_should_update_ezr_content_object
    put :update, :id => ezr_content_objects(:tdd_content_object).id, :ezr_content_object => { }
    assert_redirected_to ezr_content_object_path(assigns(:ezr_content_object))
  end

  def test_should_destroy_ezr_content_object
    assert_difference('EzrContentObject.count', -1) do
      delete :destroy, :id => ezr_content_objects(:tdd_content_object).id
    end

    assert_redirected_to ezr_content_objects_path
  end
end
