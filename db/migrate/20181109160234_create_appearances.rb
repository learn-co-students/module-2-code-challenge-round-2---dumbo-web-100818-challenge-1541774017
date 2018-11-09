class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :guest_id
      t.integer :episode_number
      t.integer :guest_rating

      t.timestamps
    end
  end
end
