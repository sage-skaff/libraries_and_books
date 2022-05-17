require 'rails_helper'

RSpec.describe Library, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :rating }
    it { should allow_value(true).for(:open) }
    it { should allow_value(false).for(:open) }
  end

  describe 'relationships' do
    it { should have_many :books }
  end

  describe 'class methods' do
    it 'returns libraries sorted by most recently created' do
      library1 = Library.create!(name: 'Public Library', rating: 2.9, open: true)
      library2 = Library.create!(name: 'Oak Library', rating: 4.7, open: true)
      library3 = Library.create!(name: 'Willow Library', rating: 3.8, open: true)

      expect(Library.most_recently_created).to eq([library3, library2, library1])
      expect(Library.most_recently_created).to_not eq([library1, library2, library3])
    end
  end
end
