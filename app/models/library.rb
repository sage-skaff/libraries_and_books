class Library < ApplicationRecord
  has_many :books, dependent: :destroy
  validates_presence_of :name, :rating
  validates :open, inclusion: [true, false]

  def self.most_recently_created
    order(created_at: :desc)
  end

  def book_count
    books.count
  end
end
