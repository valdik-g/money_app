class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.integer :user_identificator
      t.string :fullname
      t.string :post
      t.string :password

      t.timestamps
    end
  end
end
