class Guest < ApplicationRecord
  has_many :episodes
  belongs_to :episode

  def to_s
    self.name
  end

end
