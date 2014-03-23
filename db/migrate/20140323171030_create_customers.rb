class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :table_id
      t.string :status
      t.integer :server_id

      t.timestamps
    end
  end
end
