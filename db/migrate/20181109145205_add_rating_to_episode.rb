class AddRatingToEpisode < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :guest_rating, :string
    add_column :episodes, :guest_id, :integer

  end
end
