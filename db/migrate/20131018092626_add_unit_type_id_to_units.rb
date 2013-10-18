class AddUnitTypeIdToUnits < ActiveRecord::Migration
  def change
    add_column :units, :unit_type_id, :integer
  end
end
