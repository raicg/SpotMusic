require 'test_helper'

class RecentlyHeardsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recently_heards_new_url
    assert_response :success
  end

end
