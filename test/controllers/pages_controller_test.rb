require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get consulting" do
    get pages_consulting_url
    assert_response :success
  end

  test "should get web" do
    get pages_web_url
    assert_response :success
  end

  test "should get automation" do
    get pages_automation_url
    assert_response :success
  end

  test "should get marketing" do
    get pages_marketing_url
    assert_response :success
  end

  test "should get hosting" do
    get pages_hosting_url
    assert_response :success
  end
end
