require 'test_helper'

class GraphqlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get graphql_index_url
    assert_response :success
  end

end
