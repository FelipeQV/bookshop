class TransactionsController < ApplicationController
    before_action :set_transaction, only: [:new, :create]

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transactions_params)
    @book  = Book.find(params[:book_id])
    @transaction.book = @book
     if @transaction.save
      redirect_to book_path(@book)
     else
      render :new
    end
  end

  # Params & Setters
  private

  def set_transaction
    @book = Book.find(params[:book_id])
  end

  def transactions_params
    params.require(:transaction).permit(:buyer)
  end
end
