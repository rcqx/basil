class Bill < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { in: 2..25 }
  validates :amount, presence: true, length: { in: 2..25 }
end
