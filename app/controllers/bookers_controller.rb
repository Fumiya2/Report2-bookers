class BookersController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    book.save
    render :new
  end

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  
  end
  
  def list_params
    params.require(:book).permit(:title, :body)
  end
end