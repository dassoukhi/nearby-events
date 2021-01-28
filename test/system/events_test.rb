require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit events_url
  
    assert_selector "a", text: "Nearby-Events"
    save_and_open_screenshot
  end
end
