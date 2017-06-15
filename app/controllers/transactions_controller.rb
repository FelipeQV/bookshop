class TransactionsController < ApplicationController
# Test
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only:[:new, :show]
  before_action :set_transaction, only:[:show]

  def index
      @transactions = Transaction.where(user_id: current_user.id)
  end

  def new
    # I create a transaction zith a GET request without a POST
    @transaction = Transaction.new(book_id: @book.id)
    # Set Seller Id
    @transaction.user = @book.user
    # Set buyer id
    @transaction.buyer = current_user
    if @transaction.save
      redirect_to book_transaction_path(@book, @transaction)
    else
      render :new
    end
  end

  def show

  end

  private

  def transaction_params
    params.require(:transaction).permit(:book_id, :user_id, :buyer_user_id)
  end

  def set_book
    @book = Book.find(params[:book_id])
  end

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

end



