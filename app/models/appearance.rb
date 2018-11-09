class Appearance < ApplicationRecord

  belongs_to :episode
  belongs_to :guest

  validates :rating, numericality: { only_integer: true }
  validates :rating, :inclusion => { :in => 1..5 }
end
