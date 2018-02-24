require 'test_helper'

class SailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sails_index_url
    assert_response :success
  end

  test "should get import" do
    get sails_import_url
    assert_response :success
  end

end
