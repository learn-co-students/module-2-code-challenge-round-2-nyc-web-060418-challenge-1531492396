class Guest < ApplicationRecord
  has_many :episodes, through :episode_guest
  has_many :episodes
end
