class User < ApplicationRecord
  has_many :folders
  has_many :tasks
  has_many :followings
  has_many :followers
end
