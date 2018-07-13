class AddGuestRatingToEpisode < ActiveRecord::Migration[5.0]
  def change
    add_column :episodes, :guest_rating, :integer
  end
end
