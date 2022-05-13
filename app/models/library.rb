class Library < ApplicationRecord
  validates_presence_of :name, :rating
  validates :open, inclusion: [true, false]
end
