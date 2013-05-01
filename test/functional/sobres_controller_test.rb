require 'test_helper'

class SobresControllerTest < ActionController::TestCase
  setup do
    @sobre = sobres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sobres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sobre" do
    assert_difference('Sobre.count') do
      post :create, sobre: { texto: @sobre.texto }
    end

    assert_redirected_to sobre_path(assigns(:sobre))
  end

  test "should show sobre" do
    get :show, id: @sobre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sobre
    assert_response :success
  end

  test "should update sobre" do
    put :update, id: @sobre, sobre: { texto: @sobre.texto }
    assert_redirected_to sobre_path(assigns(:sobre))
  end

  test "should destroy sobre" do
    assert_difference('Sobre.count', -1) do
      delete :destroy, id: @sobre
    end

    assert_redirected_to sobres_path
  end
end
