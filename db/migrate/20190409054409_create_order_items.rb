class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
    	t.references :order, foreign_key: true
    	t.references :for_order, foreign_key: true
      t.integer :serving
      t.float :price

      t.timestamps
    end
  end
end
