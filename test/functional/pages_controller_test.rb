require './test/test_helper'

class PagesControllerTest < ActionController::TestCase
  
  def test_template_hierarchy
    # The index template is overridden in ubs
    get :index
    assert_select "h1", "Listing UBS pages"
    assert_select "title", "UBS English Pages: index"
    # The show template is overridden in ubs_en
    get :show, {:id => 1}
    assert_select "h1", "UBS English show page"
    # The new template is not overridden
    get :new
    assert_select "h1", "Default new page"
    # The edit template is only available in default location
    get :edit, {:id => 1}
    assert_select "h1", "Standard edit page"

  end
  
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pages)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_page
    assert_difference('Page.count') do
      post :create, :page => { }
    end

    assert_redirected_to page_path(assigns(:page))
  end

  def test_should_show_page
    get :show, :id => pages(:tdd_page).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => pages(:tdd_page).id
    assert_response :success
  end

  def test_should_update_page
    put :update, :id => pages(:tdd_page).id, :page => { }
    assert_redirected_to page_path(assigns(:page))
  end

  def test_should_destroy_page
    assert_difference('Page.count', -1) do
      delete :destroy, :id => pages(:tdd_page).id
    end

    assert_redirected_to pages_path
  end
end
