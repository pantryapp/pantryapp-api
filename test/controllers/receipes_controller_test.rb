require 'test_helper'

class ReceipesControllerTest < ActionController::TestCase
  setup do
    @receipe = receipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receipes)
  end

  test "should create receipe" do
    assert_difference('Receipe.count') do
      post :create, receipe: { ingredients: @receipe.ingredients, name: @receipe.name }
    end

    assert_response 201
  end

  test "should show receipe" do
    get :show, id: @receipe
    assert_response :success
  end

  test "should update receipe" do
    put :update, id: @receipe, receipe: { ingredients: @receipe.ingredients, name: @receipe.name }
    assert_response 204
  end

  test "should destroy receipe" do
    assert_difference('Receipe.count', -1) do
      delete :destroy, id: @receipe
    end

    assert_response 204
  end
end
