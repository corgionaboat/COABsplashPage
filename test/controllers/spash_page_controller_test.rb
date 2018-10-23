require 'test_helper'

class SpashPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spash_page_index_url
    assert_response :success
  end

end
