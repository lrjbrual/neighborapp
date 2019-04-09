class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
    	t.references :event, foreign_key: true
      t.string :title
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
