class FixUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    remove_column :users, :fullname
  end
end
