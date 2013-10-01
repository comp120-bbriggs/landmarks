class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.float :longitude
      t.float :latitude
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
