require "test_helper"

class RequestedServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get requested_service_index_url
    assert_response :success
  end
end
