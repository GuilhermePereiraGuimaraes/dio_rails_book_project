require "test_helper"

class BlogBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_book = blog_books(:one)
  end

  test "should get index" do
    get blog_books_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_book_url
    assert_response :success
  end

  test "should create blog_book" do
    assert_difference("BlogBook.count") do
      post blog_books_url, params: { blog_book: { author: @blog_book.author, description: @blog_book.description, ratting: @blog_book.ratting, title: @blog_book.title } }
    end

    assert_redirected_to blog_book_url(BlogBook.last)
  end

  test "should show blog_book" do
    get blog_book_url(@blog_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_book_url(@blog_book)
    assert_response :success
  end

  test "should update blog_book" do
    patch blog_book_url(@blog_book), params: { blog_book: { author: @blog_book.author, description: @blog_book.description, ratting: @blog_book.ratting, title: @blog_book.title } }
    assert_redirected_to blog_book_url(@blog_book)
  end

  test "should destroy blog_book" do
    assert_difference("BlogBook.count", -1) do
      delete blog_book_url(@blog_book)
    end

    assert_redirected_to blog_books_url
  end
end
