class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
    current_user.update(update_params)
    # binding.pry
    redirect_to '/' #controller: 'top_controller' action: 'index' and return
  end

  private
  def update_params
    params.require(:user).permit(:username, :member, :profile, :works, :avatar, :email)
  end

end
