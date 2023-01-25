class Task < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :url, presence: true
  validates :description, presence: true
  validates :folder_id, presence: true
end
