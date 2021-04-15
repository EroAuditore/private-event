class Event < ApplicationRecord
    has_many :attendees
    has_many :users, through: :attendees
    belongs_to :user
    scope :upcoming, -> { where("event_date >= ? ", Date.today)}
    scope :previous, -> { where("event_date < ? ", Date.today)}
end
