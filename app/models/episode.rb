class Episode < ApplicationRecord
has_many :guests, through :episode_guest
has_many :guests

validates :episode, only: [:number, :guest_rating]
end
