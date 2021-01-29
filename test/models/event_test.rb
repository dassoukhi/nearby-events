require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "the good theme" do
  	event = Event.new(name: "Match de foot", adress: "Paris", theme: "sport", description: "blabla", date: "2021-01-15 19:40:00", user: nil, visible: true)
  	Event.search("sport").each do |ev|
  		assert_equal "sport", ev.theme
  	end
  end
end
