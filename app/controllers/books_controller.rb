class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end
  
  def create
    @books = Book.new(book_params)
      if @books.save 
        redirect_to "/books"
      else
        @books = Book.all
        render :index
      end
  end
  
  def show
    @books =Book.find(params[:id])
  end

  def edit
    @books =Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to'/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
