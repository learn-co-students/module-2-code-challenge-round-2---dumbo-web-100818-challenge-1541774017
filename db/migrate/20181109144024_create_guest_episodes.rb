class CreateGuestEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_episodes do |t|
      t.integer :guest_id
      t.integer :episode_id
      t.integer :rating
    end
  end
end
