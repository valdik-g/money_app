class AddCompantIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :company_id, :integer
  end
end
