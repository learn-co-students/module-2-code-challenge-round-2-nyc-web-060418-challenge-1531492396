class CreateJoinTableAppearances < ActiveRecord::Migration[5.0]
  def change
    create_join_table :guests, :episodes do |t|
      t.references :guests, foreign_key: true
      t.references :episodes, foreign_key: true
    end
  end
end
