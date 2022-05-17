require 'rails_helper'

RSpec.describe Book, type: :feature do
  let!(:book1) { Book.create!(name: 'The Power of Now', pages: 236, checked_out: true) }
  let!(:book2) { Book.create!(name: 'Foundation', pages: 296, checked_out: true) }
  describe 'Book Index Page' do
    it 'lists books' do
      visit '/books'
      expect(page).to have_content('The Power of Now')
      expect(page).to have_content('Foundation')
    end
  end
end
