class CreateEpisodeguests < ActiveRecord::Migration[5.1]
  def change
    create_table :episodeguests do |t|
      t.belongs_to :guest, foreign_key: true
      t.belongs_to :episode, foreign_key: true
      t.timestamps
    end
  end
end
