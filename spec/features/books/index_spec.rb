require 'rails_helper'

RSpec.describe Book, type: :feature do
  let(:library1) { Library.create!(name: 'Public Library', rating: 2.9, open: true) }
  let(:book1) { library1.books.create!(name: 'The Power of Now', pages: 236, checked_out: true) }
  let(:book2) { Book.create!(name: 'Foundation', pages: 296, checked_out: true, library: library1) }
  describe 'Book Index Page' do
    it 'lists books' do
      visit '/books'
      expect(page).to have_content('The Power of Now')
      expect(page).to have_content('Foundation')
    end
  end
end
