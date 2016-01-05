class LikesController < ApplicationController
  def create
    Like.create(create_params)
    @proto = Proto.find(params[:proto_id])
  end

  def update
    Like.find(params[:id]).destroy
    @proto = Proto.find(params[:proto_id])
  end

  private
  def create_params
    params.permit(:proto_id).merge(user_id: current_user.id)
  end
end
