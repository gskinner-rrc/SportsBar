class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :customer_id
      t.integer :table_id
      t.integer :server_id
      t.decimal :pst_rate
      t.decimal :gst_rate

      t.timestamps
    end
  end
end
