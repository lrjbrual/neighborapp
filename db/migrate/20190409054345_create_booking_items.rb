class CreateBookingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_items do |t|
    	t.references :event, foreign_key: true
    	t.references :course, foreign_key: true
      t.integer :serving
      t.float :price

      t.timestamps
    end
  end
end
