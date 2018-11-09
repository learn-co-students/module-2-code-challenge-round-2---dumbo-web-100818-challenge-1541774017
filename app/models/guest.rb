class Guest < ApplicationRecord
  has_many :episodeguests
  has_many :episodes, through: :episodeguests
end
