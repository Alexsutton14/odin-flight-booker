class RenameFlightsToRoutes < ActiveRecord::Migration[5.2]
  def change
    rename_table :flights, :routes
  end
end
