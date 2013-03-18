require 'test_helper'

class MidiaControllerTest < ActionController::TestCase
  setup do
    @midium = midia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:midia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create midium" do
    assert_difference('Midium.count') do
      post :create, midium: { conteudo: @midium.conteudo, mediable: @midium.mediable, titulo: @midium.titulo }
    end

    assert_redirected_to midium_path(assigns(:midium))
  end

  test "should show midium" do
    get :show, id: @midium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @midium
    assert_response :success
  end

  test "should update midium" do
    put :update, id: @midium, midium: { conteudo: @midium.conteudo, mediable: @midium.mediable, titulo: @midium.titulo }
    assert_redirected_to midium_path(assigns(:midium))
  end

  test "should destroy midium" do
    assert_difference('Midium.count', -1) do
      delete :destroy, id: @midium
    end

    assert_redirected_to midia_path
  end
end
