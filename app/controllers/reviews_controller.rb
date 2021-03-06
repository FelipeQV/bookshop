class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @seller = User.find(params[:user_id])
    @reviews = Review.where(user_id: @seller.id)
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    @review.reviewer = current_user
    if @review.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :user_id)
  end

end
