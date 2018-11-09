class Appearance < ActiveRecord::Base
	belongs_to :episode
	belongs_to :guest

	validates :rating, {presence: true}
	validates :episode_id, uniqueness: {scope: :guest_id}
end