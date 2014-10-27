class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def show
    find_book
  end

  def edit
    find_book
  end

  def update
    find_book
    if @book.update(book_params)
      redirect_to book_path(@album)
    else
      render :edit
    end
  end

  def destroy
    find_book
    if @book.delete
      redirect_to books_path
    else
      render :show
    end
  end

  private

  def book_params
    (params.require(:album).permit(:name, :author, :description, :rank))
  end

  def find_book
    @book = Book.find(params[:id])
  end

end
