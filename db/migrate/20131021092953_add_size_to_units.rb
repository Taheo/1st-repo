class AddSizeToUnits < ActiveRecord::Migration
  def change
    add_column :units, :size, :integer
  end
end
