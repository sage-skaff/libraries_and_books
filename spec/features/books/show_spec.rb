require 'rails_helper'

RSpec.describe Book, type: :feature do
  let!(:library1) { Library.create!(name: 'Public Library', rating: 2.9, open: true) }
  let!(:book1) { library1.books.create!(name: 'The Power of Now', pages: 236, checked_out: true) }
  let!(:book2) { Book.create!(name: 'Foundation', pages: 296, checked_out: false, library: library1) }
  describe 'Book Show Page' do
    it 'displays the book attributes' do
      visit "/books/#{book1.id}"
      expect(page).to have_content('The Power of Now')
      expect(page).to have_content(236)
      expect(page).to have_content('Checked Out: true')
      expect(page).to_not have_content('Checked Out: false')
    end

    it 'has link to the book index' do
      visit "/books/#{book1.id}"
      expect(page).to have_link('Book Index')
    end

    it 'has link to the library index' do
      visit '/libraries'
      expect(page).to have_link('Library Index')
    end
  end
end
