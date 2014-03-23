class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :server_id
      t.string :status

      t.timestamps
    end
  end
end
