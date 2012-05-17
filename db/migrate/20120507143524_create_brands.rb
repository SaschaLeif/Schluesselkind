class CreateBrands < ActiveRecord::Migration
  
  def self.up
    create_table :brands do |t|
      t.string :name
      t.string :origin
      t.string :logo_url
      t.decimal :rating, :precision => 2, :scale => 2
      t.text :info_text

      # Der Befehl timestamps erzeugt die Felder created_at und updated_at.
      t.timestamps 
    end
  end
  
  def self.down
    drop_table :brands
  end
  
end
