require 'test_helper'

class PantryitemsControllerTest < ActionController::TestCase
  setup do
    @pantryitem = pantryitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pantryitems)
  end

  test "should create pantryitem" do
    assert_difference('Pantryitem.count') do
      post :create, pantryitem: { name: @pantryitem.name, outofstock: @pantryitem.outofstock }
    end

    assert_response 201
  end

  test "should show pantryitem" do
    get :show, id: @pantryitem
    assert_response :success
  end

  test "should update pantryitem" do
    put :update, id: @pantryitem, pantryitem: { name: @pantryitem.name, outofstock: @pantryitem.outofstock }
    assert_response 204
  end

  test "should destroy pantryitem" do
    assert_difference('Pantryitem.count', -1) do
      delete :destroy, id: @pantryitem
    end

    assert_response 204
  end
end
