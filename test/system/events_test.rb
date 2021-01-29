require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit new_event_url
    assert_selector "a", text: "Nearby-Events"
  	click_on "Sign in"
  	fill_in "Email", with: "test@sample.com"
  	fill_in "Password", with: "111111"
  	click_on "Log in"
  	fill_in "event_name", with: "test form"
  	fill_in "event_adress", with: "Paris"
  	fill_in "event_date", with: "15-01-2021-19:40:00"
  	sleep 3
  	click_on "Create Event"
  	sleep 3
    assert_selector "div", text: "Votre événement sera examiné par un Admin avant sa publication, un mail vous sera envoyé par la suite."
    save_and_open_screenshot
  end
end
