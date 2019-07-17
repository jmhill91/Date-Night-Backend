class Attire < ApplicationRecord
  has_many :rendezvous
  has_many :users, through: :rendezvous
  has_many :rendezvous_types, through: :rendezvous
end
