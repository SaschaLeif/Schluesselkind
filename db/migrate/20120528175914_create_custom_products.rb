class CreateCustomProducts < ActiveRecord::Migration
  def change
    create_table :custom_products do |t|
      t.integer :product_id
      t.integer :print_id

      t.timestamps
    end
  end
end
