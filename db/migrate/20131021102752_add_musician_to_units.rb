class AddMusicianToUnits < ActiveRecord::Migration
  def change
    add_column :units, :musician, :boolean
  end
end
