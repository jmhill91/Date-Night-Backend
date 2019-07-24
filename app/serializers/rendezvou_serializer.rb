class RendezvouSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :location, :time, :babysitter
  belongs_to :user
  belongs_to :attire
  belongs_to :rendezvous_type
end
