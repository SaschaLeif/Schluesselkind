class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :article_url
      t.integer :size_id
      t.integer :color_id

      t.timestamps
    end
  end
end
