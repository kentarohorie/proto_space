class LikesController < ApplicationController
  def create
    binding.pry
    Like.create(like_params)
  end

  def update
    binding.pry
    like
  end

  private
  def create_params
    params.permit(:proto_id).merge(user_id: current_user.id)
  end
end
