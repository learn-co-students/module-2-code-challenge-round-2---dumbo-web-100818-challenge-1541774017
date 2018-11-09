class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def display
    "Episode #{self.number} - #{self.date.strftime("%B %d, %Y")}"
  end
end
