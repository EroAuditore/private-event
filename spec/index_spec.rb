require 'rails_helper'

RSpec.describe 'index page', type: :system do
  describe 'index page' do
    it 'shows previews events' do
      visit events_path
      expect(page).to have_content('Previous events')
    end
    it 'shows upcoming events' do

        visit events_path
        expect(page).to have_content('Upcoming events')
      end
  end
end