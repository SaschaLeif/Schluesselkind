class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :brand_id #Fremdschluessel
      t.integer :article_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end

end
