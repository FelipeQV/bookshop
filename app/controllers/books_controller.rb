class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @books = Book.all
    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC")
    else
      @books = Book.all.order("created_at DESC")
    end
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])

    @book_coordinates = { lat: @book.user.latitude, lng: @book.user.longitude }

    @hash = Gmaps4rails.build_markers(@book.user) do |book, marker|
      if book.latitude
        marker.lat book.latitude
        marker.lng book.longitude
      else
        marker.lat "27.777"
        marker.lng "27.777"
      end
    end
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to books_path(@book)
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def book_address
    @book_address
  end


private

  def book_params
    params.require(:book).permit(:title, :author, :price, :description, :sold, :id, :photo)
  end
end


