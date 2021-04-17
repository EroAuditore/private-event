class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendees
  has_many :events, through: :attendees
  has_many :user_events, :foreign_key => "user_id", :class_name => "Event" 
  

end
