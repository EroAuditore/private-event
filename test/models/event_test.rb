require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
end

RSpec.describe Event, type: :model do
  it 'finds all upcoming events' do
    @upcoming = Event.create(date: '2022-04-02', description: 'Birthday', creator_id: 1)
    upcoming = Event.find_upcoming
    expect(upcoming.last[0]).to eq('Birthday')
  end

  it 'finds all past events' do
    @previous = Event.create(date: '2020-04-02', description: 'Birthday', creator_id: 1)
    previous = Event.find_previous
    expect(previous.last[0]).to eq('Birthday')
  end
end

