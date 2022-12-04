class Folder < ApplicationRecord
    belongs_to :user
    enum status:{release: 0, close: 1}
end
