class AddValueToHotspots < ActiveRecord::Migration[5.0]
  def change
    add_column :hotspots, :name, :string
  end
end
