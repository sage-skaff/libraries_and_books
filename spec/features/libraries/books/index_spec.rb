require 'rails_helper'

RSpec.describe 'Library Books Index Page', type: :feature do
  #  User Story 5, Parent Children Index
  #
  # As a visitor
  # When I visit '/parents/:parent_id/child_table_name'
  # Then I see each Child that is associated with that Parent with each Child's attributes:
  let!(:library1) { Library.create!(name: 'Public Library', rating: 2.9, open: true) }
  let!(:book1) { library1.books.create!(name: 'The Power of Now', pages: 236, checked_out: true) }

  it 'displays the books in a library with their attributes' do
    visit "/libraries/#{library1.id}/books"

    expect(page).to have_content('The Power of Now')
    expect(page).to have_content(236)
    expect(page).to have_content('Checked Out: true')
  end

  it 'has link to the book index' do
    visit "/libraries/#{library1.id}/books"
    expect(page).to have_link('Book Index')
  end
end
