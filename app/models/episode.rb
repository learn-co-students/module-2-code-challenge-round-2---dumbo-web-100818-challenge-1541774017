class Episode < ApplicationRecord
  has_many :episodeguests
  has_many :guests, through: :episodeguests
end
