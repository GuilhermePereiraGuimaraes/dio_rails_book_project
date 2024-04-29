json.extract! blog_book, :id, :title, :author, :ratting, :description, :created_at, :updated_at
json.url blog_book_url(blog_book, format: :json)
