class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end
  def new
    @user= User.find(params[:user_id])
    @review = Review.new
  end

  def create
   @user= User.find(params[:user_id])
  @review = Review.new(review_params)
  @user.review = @user
  if @user.save
    redirect_to user_path(@user)
  else
    render :new
end

  end


  def review_params
    params.require(:review).premit(:content, :user_id)
  end
end




