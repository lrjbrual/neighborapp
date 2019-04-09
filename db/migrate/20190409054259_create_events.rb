class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
    	t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.text :address
      t.date :event_date
      t.integer :no_person
      t.datetime :cut_off
      t.string :start_time
      t.string :end_time
      t.string :status

      t.timestamps
    end
  end
end
