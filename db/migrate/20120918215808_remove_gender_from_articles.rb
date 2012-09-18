class RemoveGenderFromArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :gender
  end

  def down
    add_column :articles, :gender, :string
  end
end
