class RegistrationsController < Devise::RegistrationsController

  def account_update_params
    params.require(:user).permit(:email, :address, :password, :password_confirmation, :current_password)
  end

   #  def edit
   #  @user = User.new(params[:user_id])
   #  end

   #  def update
   #    @user = User.new(params[:user_id])
   #    @user.update
   #    if @user.save
   #   redirect_to @user, notice: 'Your settings were succsesfully updated.'
   # end
   # end
end
