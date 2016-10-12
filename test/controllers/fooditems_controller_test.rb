require 'test_helper'

class FooditemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fooditem = fooditems(:one)
  end

  test "should get index" do
    get fooditems_url
    assert_response :success
  end

  test "should get new" do
    get new_fooditem_url
    assert_response :success
  end

  test "should create fooditem" do
    assert_difference('Fooditem.count') do
      post fooditems_url, params: { fooditem: { description: @fooditem.description, ima_url: @fooditem.ima_url, name: @fooditem.name, price: @fooditem.price } }
    end

    assert_redirected_to fooditem_url(Fooditem.last)
  end

  test "should show fooditem" do
    get fooditem_url(@fooditem)
    assert_response :success
  end

  test "should get edit" do
    get edit_fooditem_url(@fooditem)
    assert_response :success
  end

  test "should update fooditem" do
    patch fooditem_url(@fooditem), params: { fooditem: { description: @fooditem.description, ima_url: @fooditem.ima_url, name: @fooditem.name, price: @fooditem.price } }
    assert_redirected_to fooditem_url(@fooditem)
  end

  test "should destroy fooditem" do
    assert_difference('Fooditem.count', -1) do
      delete fooditem_url(@fooditem)
    end

    assert_redirected_to fooditems_url
  end
end
