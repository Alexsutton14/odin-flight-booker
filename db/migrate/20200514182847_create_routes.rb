class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.integer :start_airport_id
      t.integer :end_airport_id
      t.integer :duration

      t.timestamps
    end
  end
end