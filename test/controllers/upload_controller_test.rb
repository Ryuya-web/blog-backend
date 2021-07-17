require 'test_helper'

class UploadControllerTest < ActionDispatch::IntegrationTest
  test "should get image" do
    get upload_image_url
    assert_response :success
  end

end
