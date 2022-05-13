class Library < ApplicationRecord
  validates_presence_of :name, :rating
  validate :open, inclusion: [true, false]
end
