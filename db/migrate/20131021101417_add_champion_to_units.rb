class AddChampionToUnits < ActiveRecord::Migration
  def change
    add_column :units, :champion, :boolean
  end
end
