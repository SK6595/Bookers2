class BooksController < ApplicationController
  
  def new
    @book = Book.new
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @user = current_user
    @book = Book.new
  end

  def show
    @book = Book.new
  end
  
  def edit
  end 
    
  private

  def book_params
    params.require(:book).permit(:title, :image, :body)
  end
  
end
