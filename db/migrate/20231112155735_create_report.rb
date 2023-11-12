class CreateReport < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :month
      t.string :year
      t.string :repotr_info

      t.timestamps
    end
  end
end
