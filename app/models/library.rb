class Library < ApplicationRecord
  has_many :books, dependent: :destroy
  validates_presence_of :name, :rating
  validates :open, inclusion: [true, false]
end
