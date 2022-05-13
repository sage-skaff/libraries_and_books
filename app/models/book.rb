class Book < ApplicationRecord
  belongs_to :Library
  validates_presence_of :name, :pages
  validate :checked_out, inclusion: [true, false]
end
