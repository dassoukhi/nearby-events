require 'test_helper'


class EventsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
  	get '/users/sign_in'
  	sign_in users(:user_one)
  	post user_session_url
  end

  test "should get index" do
  	get events_url
  	assert_response :success
  	sleep 7
  end	
  # test "the truth" do
  #   assert true
  # end
end
