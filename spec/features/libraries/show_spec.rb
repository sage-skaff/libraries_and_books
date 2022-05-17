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
  end
end
