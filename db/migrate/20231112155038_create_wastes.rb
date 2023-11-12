class CreateWastes < ActiveRecord::Migration[7.0]
  def change
    create_table :wastes do |t|
      t.float :quantity
      t.string :waste_type
      t.string :info

      t.timestamps
    end
  end
end
