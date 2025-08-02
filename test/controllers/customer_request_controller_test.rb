require "test_helper"

class CustomerRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_request_index_url
    assert_response :success
  end
end
