require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { active: @user.active, admin: @user.admin, cell_phone: @user.cell_phone, cpf: @user.cpf, date_birth: @user.date_birth, date_inclusion: @user.date_inclusion, email: @user.email, identity: @user.identity, marital_status: @user.marital_status, name: @user.name, professional: @user.professional, sex: @user.sex } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { active: @user.active, admin: @user.admin, cell_phone: @user.cell_phone, cpf: @user.cpf, date_birth: @user.date_birth, date_inclusion: @user.date_inclusion, email: @user.email, identity: @user.identity, marital_status: @user.marital_status, name: @user.name, professional: @user.professional, sex: @user.sex } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
