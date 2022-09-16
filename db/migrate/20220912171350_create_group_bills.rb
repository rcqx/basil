class CreateGroupBills < ActiveRecord::Migration[7.0]
  def change
    create_table :group_bills do |t|

      t.timestamps
    end
  end
end
