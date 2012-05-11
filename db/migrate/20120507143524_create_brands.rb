class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :origin
      t.string :logo_url
      t.decimal :rating, :precision => 2, :scale => 2
      #t.text :info_text

      t.timestamps
    end
  end
end
