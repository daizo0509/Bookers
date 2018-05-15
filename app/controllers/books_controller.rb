class BooksController < ApplicationController
  def index
  end

  def show
  	  @book = Book.find(params[:id])
  end

  def new
  	  @books = Book.all.oder("ASC")
      @book = Book.new
  end

  def edit
  	  @book = Book.find(params[:id])
  end

  def create
  	 @book = Book.new(book_params)
     if @book.save
     redirect_to book_path(@book)
   else
      @books = Book.all
      render :new
    end
  end

  def update
  	  book = Book.find(params[:id])
  	  book.update(book_params)
  	  redirect_to book_path(book.id)
  end
  def destroy
  	  book = Book.find(params[:id])
  	  book.destroy
  	  redirect_to new_book_path
  end

  private
    def book_params
    	params.require(:book).permit(:title,:body)
    end
end
