class Episode < ApplicationRecord
  has_many :apperances
  has_many :guest, through: :apperances
end
