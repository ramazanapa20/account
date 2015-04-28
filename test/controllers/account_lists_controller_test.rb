require 'test_helper'

class AccountListsControllerTest < ActionController::TestCase
  setup do
    @account_list = account_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_list" do
    assert_difference('AccountList.count') do
      post :create, account_list: { gelirlerim: @account_list.gelirlerim, giderlerim: @account_list.giderlerim }
    end

    assert_redirected_to account_list_path(assigns(:account_list))
  end

  test "should show account_list" do
    get :show, id: @account_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_list
    assert_response :success
  end

  test "should update account_list" do
    patch :update, id: @account_list, account_list: { gelirlerim: @account_list.gelirlerim, giderlerim: @account_list.giderlerim }
    assert_redirected_to account_list_path(assigns(:account_list))
  end

  test "should destroy account_list" do
    assert_difference('AccountList.count', -1) do
      delete :destroy, id: @account_list
    end

    assert_redirected_to account_lists_path
  end
end
