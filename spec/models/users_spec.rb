require 'rails_helper'


RSpec.describe Event, type: :model do
  #let(:email) { 'test@mail.com' }
  #let(:password) { '123456' }
  describe 'An User can be created it has all the validations' do
    it 'User has a valid mail' do
      user = User.create(email: 'user3', password: '1234567')
      expect(user).to_not be_valid
    end

    it 'User has valid mail' do
        user = User.create(email: 'user3@mail.com', password: '1234567')
        expect(user).to be_valid
    end
    it 'Cannot repeat two users' do
        user = User.create(email: 'user3@mail.com', password: '1234567')
        user2 = User.create(email: 'user3@mail.com', password: '1234567')
        expect(user2).to_not be_valid
    end
  end
  
    

 

end