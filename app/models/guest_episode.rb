class GuestEpisode < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates :rating, inclusion: { in: %w(1 2 3 4 5) }
end
