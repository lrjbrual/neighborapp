class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
    	t.references :user, foreign_key: true
    	t.references :event, foreign_key: true
      t.integer :no_person
      t.float :total

      t.timestamps
    end
  end
end
