require 'rails_helper'

RSpec.describe Library, type: :feature do
  let!(:library1) { Library.create!(name: 'Public Library', rating: 2.9, open: true) }
  describe 'Library Show Page' do
    it 'displays the library attributes' do
      visit "/libraries/#{library1.id}"
      expect(page).to have_content('Public Library')
      expect(page).to have_content(2.9)
      expect(page).to have_content('Open')
    end

    it 'displays the number of books in the library' do
      book1 = library1.books.create!(name: 'Foundation', pages: 296, checked_out: true)
      visit "/libraries/#{library1.id}"
      expect(page).to have_content('Total Books: 1')
    end

    it 'has link to the book index' do
      visit "/libraries/#{library1.id}"
      expect(page).to have_link('Book Index')
    end

    it 'has link to the library index' do
      visit '/libraries'
      expect(page).to have_link('Library Index')
    end
  end
end
