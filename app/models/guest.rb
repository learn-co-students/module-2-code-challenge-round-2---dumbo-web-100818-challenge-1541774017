class Guest < ApplicationRecord
has_many :guest_episodes
has_many :episodes, through: :guest_episodes

#I can't find where on the ReadMe the instructions for validations. So created My own for now.
validates :name, presence: true
# So a different guest can't have the same occupation.
validates :occupation, uniqueness: true

end
