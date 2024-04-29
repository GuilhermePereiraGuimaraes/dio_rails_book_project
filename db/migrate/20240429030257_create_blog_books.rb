class CreateBlogBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :blog_books do |t|
      t.string :title
      t.string :author
      t.float :ratting
      t.text :description

      t.timestamps
    end
  end
end
