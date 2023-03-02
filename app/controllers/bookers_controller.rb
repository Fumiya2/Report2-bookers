class BookersController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    @books = Book.all.order(id: :asc)
    redirect_to "/books/#{@book.id}}"
  end

  def index
    @books = Book.all
  end
  
  def show
  end

  def edit
  
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end