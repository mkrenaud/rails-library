require 'test_helper'

class LibrariansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get librarians_index_url
    assert_response :success
  end

  test "should get show" do
    get librarians_show_url
    assert_response :success
  end

end
