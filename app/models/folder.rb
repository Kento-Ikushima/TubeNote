class Folder < ApplicationRecord
  belongs_to :user
  enum status: {release: 0, close: 1}
  validates :folder_name, presence: true
  validates :status, presence: true
  validates :user_id, presence: true
end
