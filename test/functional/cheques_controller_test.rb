require 'test_helper'

class ChequesControllerTest < ActionController::TestCase
  setup do
    @cheque = cheques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cheques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cheque" do
    assert_difference('Cheque.count') do
      post :create, cheque: { amount: @cheque.amount, cross: @cheque.cross, recipient: @cheque.recipient, sender: @cheque.sender }
    end

    assert_redirected_to cheque_path(assigns(:cheque))
  end

  test "should show cheque" do
    get :show, id: @cheque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cheque
    assert_response :success
  end

  test "should update cheque" do
    put :update, id: @cheque, cheque: { amount: @cheque.amount, cross: @cheque.cross, recipient: @cheque.recipient, sender: @cheque.sender }
    assert_redirected_to cheque_path(assigns(:cheque))
  end

  test "should destroy cheque" do
    assert_difference('Cheque.count', -1) do
      delete :destroy, id: @cheque
    end

    assert_redirected_to cheques_path
  end
end
