require "test_helper"

class StatsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get stats_create_url
    assert_response :success
  end

  test "should get index" do
    get stats_index_url
    assert_response :success
  end
end
