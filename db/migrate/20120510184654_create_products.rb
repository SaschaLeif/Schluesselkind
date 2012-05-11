class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :brand_id
      t.integer :info_id
     # t.text :info_text_id

      t.timestamps
    end
  end
end
