class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :login
      t.string :password
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
