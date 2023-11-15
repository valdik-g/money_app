class AddDateToProfit < ActiveRecord::Migration[7.0]
  def change
    add_column :profits, :date, :string
  end
end
