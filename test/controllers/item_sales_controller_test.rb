require 'test_helper'

class ItemSalesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get item_sales_create_url
    assert_response :success
  end

  test "should get destroy" do
    get item_sales_destroy_url
    assert_response :success
  end

end
