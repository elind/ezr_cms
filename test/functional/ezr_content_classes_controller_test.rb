require './test/test_helper'

class EzrContentClassesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ezr_content_classes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_ezr_content_class
    assert_difference('EzrContentClass.count') do
      post :create, :ezr_content_class => {
        :display_name => "New content class",
        :identifier => "new_content_class"
      }
    end

    assert_redirected_to ezr_content_class_path(assigns(:ezr_content_class))
  end

  def test_should_show_ezr_content_class
    get :show, :id => ezr_content_classes(:tdd_content_class).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => ezr_content_classes(:tdd_content_class).id
    assert_response :success
  end

  def test_should_update_ezr_content_class
    put :update, :id => ezr_content_classes(:tdd_content_class).id, :ezr_content_class => {
      :display_name => "New content class",
      :identifier => "new_content_class"
    }
    assert_redirected_to ezr_content_class_path(assigns(:ezr_content_class))
  end

  def test_should_destroy_ezr_content_class
    assert_difference('EzrContentClass.count', -1) do
      delete :destroy, :id => ezr_content_classes(:tdd_content_class).id
    end

    assert_redirected_to ezr_content_classes_path
  end
end
