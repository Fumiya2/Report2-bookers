class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end

  def show
    @books =Book.find(params[:id])
  end

  def edit
    @books =Book.find()
  end
  
  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
