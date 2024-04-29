class BlogBooksController < ApplicationController
  before_action :set_blog_book, only: %i[ show edit update destroy ]

  # GET /blog_books or /blog_books.json
  def index
    @blog_books = BlogBook.all
  end

  # GET /blog_books/1 or /blog_books/1.json
  def show
  end

  # GET /blog_books/new
  def new
    @blog_book = BlogBook.new
  end

  # GET /blog_books/1/edit
  def edit
  end

  # POST /blog_books or /blog_books.json
  def create
    @blog_book = BlogBook.new(blog_book_params)

    respond_to do |format|
      if @blog_book.save
        format.html { redirect_to blog_book_url(@blog_book), notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @blog_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_books/1 or /blog_books/1.json
  def update
    respond_to do |format|
      if @blog_book.update(blog_book_params)
        format.html { redirect_to blog_book_url(@blog_book), notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_books/1 or /blog_books/1.json
  def destroy
    @blog_book.destroy!

    respond_to do |format|
      format.html { redirect_to blog_books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_book
      @blog_book = BlogBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_book_params
      params.require(:blog_book).permit(:title, :author, :ratting, :description)
    end
end
