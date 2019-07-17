class User < ApplicationRecord
  has_many :followed_users, foreign_key: :follower_id, class_name: 'SignificantOther'
  has_many :followees, through: :followed_users
  has_many :rendezvous
  has_many :attires, through: :rendezvous
  has_many :rendezvous_types, through: :rendezvous
end
