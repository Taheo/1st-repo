class AddStandarToUnits < ActiveRecord::Migration
  def change
    add_column :units, :standar, :boolean
  end
end
