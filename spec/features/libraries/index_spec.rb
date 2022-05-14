require 'rails_helper'

RSpec.describe Library, type: :feature do
  let!(:library1) { Library.create!(name: 'Public Library', rating: 2.9, open: true) }
  let!(:library2) { Library.create!(name: 'Sage Library', rating: 5.0, open: true) }
  describe 'Library Index Page' do
    it 'lists libraries' do
      visit '/libraries'
      expect(page).to have_content('Public Library')
      expect(page).to have_content('Sage Library')
    end
  end
end
