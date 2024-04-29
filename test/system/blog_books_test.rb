require "application_system_test_case"

class BlogBooksTest < ApplicationSystemTestCase
  setup do
    @blog_book = blog_books(:one)
  end

  test "visiting the index" do
    visit blog_books_url
    assert_selector "h1", text: "Blog books"
  end

  test "should create blog book" do
    visit blog_books_url
    click_on "New blog book"

    fill_in "Author", with: @blog_book.author
    fill_in "Description", with: @blog_book.description
    fill_in "Ratting", with: @blog_book.ratting
    fill_in "Title", with: @blog_book.title
    click_on "Create Blog book"

    assert_text "Blog book was successfully created"
    click_on "Back"
  end

  test "should update Blog book" do
    visit blog_book_url(@blog_book)
    click_on "Edit this blog book", match: :first

    fill_in "Author", with: @blog_book.author
    fill_in "Description", with: @blog_book.description
    fill_in "Ratting", with: @blog_book.ratting
    fill_in "Title", with: @blog_book.title
    click_on "Update Blog book"

    assert_text "Blog book was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog book" do
    visit blog_book_url(@blog_book)
    click_on "Destroy this blog book", match: :first

    assert_text "Blog book was successfully destroyed"
  end
end
