class Book < ApplicationRecord
  belongs_to :library
  validates_presence_of :name, :pages
  validates :checked_out, inclusion: [true, false]
end
