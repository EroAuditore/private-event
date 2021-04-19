require 'rails_helper'

RSpec.describe 'New event page', type: :system do
  describe 'New event' do
    it 'Needs to be loged in' do
      visit new_event_path
      expect(page).to have_content('You need to sign')
    end
  end
end