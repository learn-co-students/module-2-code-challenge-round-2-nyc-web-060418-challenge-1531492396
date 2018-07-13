class CreateEpisodeGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :episode_guests do |t|
      t.references :guest, foreign_key: true
      t.references :episode, foreign_key: true

      t.timestamps
    end
  end
end
