class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home

 end

  def my_sales
    @transactions = Transaction.where(buyer_user_id: current_user.id)
  end
end

