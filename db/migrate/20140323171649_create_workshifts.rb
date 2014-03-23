class CreateWorkshifts < ActiveRecord::Migration
  def change
    create_table :workshifts do |t|
      t.integer :employee_id
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :pay_rate

      t.timestamps
    end
  end
end
