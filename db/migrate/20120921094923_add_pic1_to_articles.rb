class AddPic1ToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :pic1, :string
    add_column :articles, :pic2, :string
    add_column :articles, :pic3, :string
    add_column :articles, :pic4, :string
    add_column :articles, :pic5, :string
  end
end
