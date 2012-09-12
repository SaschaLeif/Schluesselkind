class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :article_url
      t.string :gender
      t.timestamps
    end
  end
end
