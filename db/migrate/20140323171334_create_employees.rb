class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :position_title
      t.string :address
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.string :email
      t.decimal :pay_rate

      t.timestamps
    end
  end
end
