class Guest < ApplicationRecord
  has_many :tickets
  has_many :episodes, through: :tickets

  validates :name, presence: true
  validates :occupation, presence: true

end
