class AddRatingToEpisodeguests < ActiveRecord::Migration[5.1]
  def change
    add_column :episodeguests, :rating, :integer
  end
end
