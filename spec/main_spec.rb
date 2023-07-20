require 'rails_helper'

RSpec.describe 'Hello world', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit root_path
      expect(page).to have_content('LOG IN')
    end

    it 'shows the right content' do
        visit root_path
        expect(page).to have_content('Email')
    end

    it 'shows the right content' do
        visit root_path
        expect(page).to have_content('Password')
    end
  end
end