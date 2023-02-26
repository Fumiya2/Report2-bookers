class BookersController < ApplicationController
  
  def new
    book =Book.new(book_params)
    book.save
    render :new
  end
  
  def index
  end

  def show
  end

  def edit
  end
end
