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

    it 'displays each library time of creation' do
      visit '/libraries'
      expect(page).to have_content(library1.created_at)
      expect(page).to have_content(library2.created_at)
    end

    it 'has link to the book index' do
      visit '/libraries'
      expect(page).to have_link('Book Index')
    end
  end
end
