class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates_uniqueness_of :guest, scope: [:episode]
  validates :rating, presence: true

  def display
    "Episode ##{self.episode.number} - #{self.guest.name} - #{self.rating}"
  end

end
