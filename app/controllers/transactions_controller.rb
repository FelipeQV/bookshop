class TransactionsController < ApplicationController
# Test
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new

  end

end
