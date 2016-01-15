class LikesController < ApplicationController
  def create
    Like.create(create_params)
    @proto = Proto.find_by_id(params[:proto_id])
  end

  def update
    Like.find_by_id(params[:id]).destroy
    @proto = Proto.find_by_id(params[:proto_id])
  end

  private
  def create_params
    params.permit(:proto_id).merge(user_id: current_user.id)
  end
end
