class CreateHotspots < ActiveRecord::Migration[5.0]
  def change
    create_table :hotspots do |t|
      t.string :city
      t.string :state
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
