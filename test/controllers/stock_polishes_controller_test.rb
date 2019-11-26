require 'test_helper'

class StockPolishesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get stock_polishes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get stock_polishes_destroy_url
    assert_response :success
  end

end
