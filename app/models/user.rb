class User < ApplicationRecord
  has_many :groups
  has_many :bills
  validates :name, presence: true, length: { in: 2..25 }
end
