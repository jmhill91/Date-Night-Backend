class RendezvousType < ApplicationRecord
  has_many :rendezvous
  has_many :users, through: :rendezvous
  has_many :attires, through: :rendezvous
end
