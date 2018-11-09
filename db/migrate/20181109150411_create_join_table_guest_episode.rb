class CreateJoinTableGuestEpisode < ActiveRecord::Migration[5.1]
  def change
    create_join_table :guest, :episode do |t|
      t.integer :guest_id
      t.integer :episode_id
      # t.index [:guest_id, :episode_id]
      # t.index [:episode_id, :guest_id]
    end
  end
end
