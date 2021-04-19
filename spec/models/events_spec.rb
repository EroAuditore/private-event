require 'rails_helper'


RSpec.describe Event, type: :model do
  let(:email) { 'test@mail.com' }
  let(:password) { '123456' }
  describe 'An event can be created by a user and if it has all the validations' do
    it 'belongs to a user' do
      user = User.create(email: 'user3@mail.com', password: '1234567')
      event = Event.create(user_id: user.id, description: 'description of the event', creator_id: user.id)

      expect(event.user_id).to eq(user.id)
    end

    it 'event is not valid ' do
      event = Event.create(user_id: nil, description: 'description of the event')

      expect(event).to_not be_valid
    end
  end

  it 'event is not valid' do
    user = User.create
    event = Event.create(user_id: user.id,  description: 'description of the event')
    event2 = Event.create(user_id: user.id,  description: 'description of the event more longer than usual')

    expect(event).to_not be_valid
    expect(event2).to_not be_valid
  end

  it 'event can have many attendees' do
    creator = User.create(email: 'creator@mail.com', password: '123456')
    attendee1 = User.create(email: 'attendee1@mail.com', password: '123456')
    attendee2 = User.create(email: 'attendee2@mail.com', password: '123456')

    event = Event.create(user_id: creator.id,  description: 'description of the event')
    event.users << attendee1
    event.users << attendee2
    event.save

    saved_event = Event.find(event.id)
    expect(saved_event.users.size).to eq(2)
  end
end