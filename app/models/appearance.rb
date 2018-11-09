class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  # validates :rating, numericality: { greater_than: 0 }
  # validates :rating, numericality: { less_than: 6 }
  validates :guest_id, uniqueness: { scope: :episode_id,
    message: "Guest cannot appear twice in an episode" }
end
