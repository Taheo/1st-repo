class AddImageToUnitType < ActiveRecord::Migration
  def change
    add_column :unit_types, :image, :string
  end
end
