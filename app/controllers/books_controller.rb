class BooksController < ApplicationController
  def index
  end

  def show
  	  @book = Book.find(params[:id])
  end

  def new
  	  @books =  Book.all
  	  @book = Book.new
  end

  def edit
  end

  def create
  	  book = Book.new(book_params)
  	  book.save
  	  redirect_to new_books_path
  end

  private
    def book_params
    	params.require(:book).permit(:title,:body)
    end
end
