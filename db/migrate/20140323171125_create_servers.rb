class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.integer :employee_id

      t.timestamps
    end
  end
end
