class GroupBill < ApplicationRecord
  belongs_to :bill
  belongs_to :group
end
