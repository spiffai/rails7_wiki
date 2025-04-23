class AddBodyToWikiPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :wiki_posts, :body, :text
  end
end
