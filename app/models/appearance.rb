class Appearance < ApplicationRecord
  validates :rating, numericality: { less_than: 6, greater_than: 0 }

  belongs_to :episode
  belongs_to :guest
end
