class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new

  end

  def show
    @book = Book.find(params[:id])
    @user = current_user
  end

  def create
    before_action :authenticate_user!
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

private

  def book_params
    params.require(:book).permit(:title, :author, :price, :description, :sold, :id)
  end
end
