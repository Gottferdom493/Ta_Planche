require "test_helper"

class CalendriersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calendriers_index_url
    assert_response :success
  end
end
