require 'test_helper'

class ColetaControllerTest < ActionController::TestCase
  setup do
    @coletum = coleta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coleta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coletum" do
    assert_difference('Coletum.count') do
      post :create, coletum: { data: @coletum.data, info: @coletum.info }
    end

    assert_redirected_to coletum_path(assigns(:coletum))
  end

  test "should show coletum" do
    get :show, id: @coletum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coletum
    assert_response :success
  end

  test "should update coletum" do
    put :update, id: @coletum, coletum: { data: @coletum.data, info: @coletum.info }
    assert_redirected_to coletum_path(assigns(:coletum))
  end

  test "should destroy coletum" do
    assert_difference('Coletum.count', -1) do
      delete :destroy, id: @coletum
    end

    assert_redirected_to coleta_path
  end
end
