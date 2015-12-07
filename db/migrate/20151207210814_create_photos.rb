class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.text :photo
      
      
      t.integer :place_id

      
      t.timestamps null: false
    end

  end
end
