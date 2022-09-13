class Group < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { in: 2..25 }
  validates :icon, presence: true
end
