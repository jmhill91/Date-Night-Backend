class Rendezvou < ApplicationRecord
  belongs_to :user
  belongs_to :attire
  belongs_to :rendezvous_type
end
