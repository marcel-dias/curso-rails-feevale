require 'test_helper'

class UsuarioSeguidoresControllerTest < ActionController::TestCase
  setup do
    @usuario_seguidor = usuario_seguidores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_seguidores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_seguidor" do
    assert_difference('UsuarioSeguidor.count') do
      post :create, usuario_seguidor: { seguido_id: @usuario_seguidor.seguido_id, seguidor_id: @usuario_seguidor.seguidor_id }
    end

    assert_redirected_to usuario_seguidor_path(assigns(:usuario_seguidor))
  end

  test "should show usuario_seguidor" do
    get :show, id: @usuario_seguidor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_seguidor
    assert_response :success
  end

  test "should update usuario_seguidor" do
    patch :update, id: @usuario_seguidor, usuario_seguidor: { seguido_id: @usuario_seguidor.seguido_id, seguidor_id: @usuario_seguidor.seguidor_id }
    assert_redirected_to usuario_seguidor_path(assigns(:usuario_seguidor))
  end

  test "should destroy usuario_seguidor" do
    assert_difference('UsuarioSeguidor.count', -1) do
      delete :destroy, id: @usuario_seguidor
    end

    assert_redirected_to usuario_seguidores_path
  end
end
