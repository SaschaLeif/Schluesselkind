class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.decimal :print_price, :precision => 8, :scale => 2
      t.string :name
      t.string :print_url
      t.timestamps
    end
  end
end
