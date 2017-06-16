class UsersController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_user, only: [:show]

    def show
    end

    # def edit
    #  @user = User.find(params[:id])
    # end

    # def update
    #   @user = User.new(params[:user_id])
    #   @user.update
    #   if @user.save
    #   redirect_to @user, notice: 'Your settings were succsesfully updated.'
    # end
    # end

    private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
    params.require(:user.permit(:address, :email))
  end
end
