class Attendee < ActiveRecord::Migration[6.1]
  def change
    create_table :attendees do |t|
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
