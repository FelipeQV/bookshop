class TransactionsController < ApplicationController
# Test
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  @book = Book.find(params[:book_id])
   @transaction = Transaction.new(book_id: params[:book_id])
   @transaction.user = @book.user
   @transaction.buyer = current_user
  end

  def create
   @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to book_transaction_path(@book)
    else
      render :new
    end


  end

  def index
      @book = Book.find(params[:book_id])


  end




private

def transaction_params
    params.require(:transaction).permit(:book_id, :user_id, :buyer_user_id)
  end
end




def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end
