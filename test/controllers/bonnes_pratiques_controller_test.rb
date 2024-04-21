require "test_helper"

class BonnesPratiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bonnes_pratiques_show_url
    assert_response :success
  end
end
