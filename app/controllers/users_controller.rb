class UsersController < ApplicationController
  def show
    @protos = current_user.protos.page(params[:page])
  end

  def edit
  end

  def update
    current_user.update(update_params)
    redirect_to root_path and return
  end

  private
  def update_params
    params.require(:user).permit(:username, :member, :profile, :works, :avatar, :email)
  end

end
