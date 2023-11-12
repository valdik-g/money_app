class CreateProfit < ActiveRecord::Migration[7.0]
  def change
    create_table :profits do |t|
      t.float :quantity
      t.string :profit_type
      t.string :info

      t.timestamps
    end
  end
end
