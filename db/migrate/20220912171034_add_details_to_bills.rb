class AddDetailsToBills < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :name, :string
    add_column :bills, :amount, :decimal
  end
end
