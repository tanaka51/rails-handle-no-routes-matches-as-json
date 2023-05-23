require "test_helper"

class NotFoundTest < ActionDispatch::IntegrationTest
  test 'not found return JSON when given "content-type: application/json"' do
    get '/foo', headers: { 'content-type': 'application/json' }

    assert_response :not_found
    json = JSON.parse(response.body)
    assert_equal json, { 'message': 'not found' }
  end
end
