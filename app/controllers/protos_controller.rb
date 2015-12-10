class ProtosController < ApplicationController
  def show
    @proto = Proto.find_by_id(params[:id])
  end

  def new
    @proto = Proto.new
    @proto.thumbnails.new
  end

  def create
    Proto.create(create_params)
    redirect_to root_path and return
  end

  private
  def create_params
    params.require(:proto).permit(:title, :catchcopy, :concept, thumbnails_attributes: [:image, :status]).merge(user_id: params[:user_id])
  end
end
