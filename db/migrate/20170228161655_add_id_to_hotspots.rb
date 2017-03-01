class AddIdToHotspots < ActiveRecord::Migration[5.0]
  def change
    add_column :hotspots, :category_id, :integer
  end
end
