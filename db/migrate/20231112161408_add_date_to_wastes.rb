class AddDateToWastes < ActiveRecord::Migration[7.0]
  def change
    add_column :wastes, :date, :string
  end
end
