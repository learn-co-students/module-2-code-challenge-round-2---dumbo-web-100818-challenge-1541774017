class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def date_and_number
    "Episode ##{self.number} /// Aired: #{self.date}"
  end

  def appearance
    self.appearance
  end
end
