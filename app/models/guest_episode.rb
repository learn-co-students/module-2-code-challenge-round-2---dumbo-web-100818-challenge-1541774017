class GuestEpisode < ApplicationRecord
  # validates :rating, length:{minimum: 1, maximum:5}
  belongs_to :guest
  belongs_to :episode
end
