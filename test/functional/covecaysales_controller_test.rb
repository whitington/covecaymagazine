require 'test_helper'

class CovecaysalesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:covecaysales)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_covecaysales
    assert_difference('Covecaysales.count') do
      post :create, :covecaysales => { }
    end

    assert_redirected_to covecaysales_path(assigns(:covecaysales))
  end

  def test_should_show_covecaysales
    get :show, :id => covecaysales(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => covecaysales(:one).id
    assert_response :success
  end

  def test_should_update_covecaysales
    put :update, :id => covecaysales(:one).id, :covecaysales => { }
    assert_redirected_to covecaysales_path(assigns(:covecaysales))
  end

  def test_should_destroy_covecaysales
    assert_difference('Covecaysales.count', -1) do
      delete :destroy, :id => covecaysales(:one).id
    end

    assert_redirected_to covecaysales_path
  end
end
