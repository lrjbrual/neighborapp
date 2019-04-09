class CreateEventCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :event_costs do |t|
    	t.references :event, foreign_key: true
      t.float :cost

      t.timestamps
    end
  end
end
