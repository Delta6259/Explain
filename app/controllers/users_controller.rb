class UsersController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def user_params
    params.require(:user).permit(:id)
  end
end
