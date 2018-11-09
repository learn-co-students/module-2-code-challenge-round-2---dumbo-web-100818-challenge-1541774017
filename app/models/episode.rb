class Episode < ApplicationRecord
  has_many :guests

  validates_inclusion_of :rating, :in => [1,2,3,4,5]
end
