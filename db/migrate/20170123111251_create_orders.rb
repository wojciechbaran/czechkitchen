class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :surname
      t.string :street
      t.string :number
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
