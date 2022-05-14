require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :pages }
    it { should allow_value(true).for(:checked_out) }
    it { should allow_value(false).for(:checked_out) }
  end

  describe 'relationships' do
  end
end
