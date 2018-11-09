class Episode < ApplicationRecord
  has_many :tickets
  has_many :guests, through: :tickets
end
