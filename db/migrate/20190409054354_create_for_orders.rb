class CreateForOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :for_orders do |t|
    	t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.float :price
      t.string :status
      t.integer :serving_size
      t.string :type
      t.boolean :is_flash
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
