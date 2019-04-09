class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :is_chef
      t.boolean :is_customer
      t.boolean :is_admin
      t.string :firstname
      t.string :lastname
      t.text :address
      t.string :zipcode
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
