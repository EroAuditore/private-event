class Event < ApplicationRecord
    has_many :attendees
    has_many :users, through: :attendees
    belongs_to :user
    scope :upcoming, -> { where("event_date >= ? ", Date.today)}
    scope :previous, -> { where("event_date < ? ", Date.today)}

    def self.find_upcoming
        upcoming.order('created_at DESC')
      end
    
    def self.find_previous
      previous.order('created_at DESC')
    end

end
