class ProtosController < ApplicationController

  def index
    @protos = Proto.all
  end

  def show
    @proto = Proto.find_by_id(params[:id])
    @user = @proto.user
    @thumbnails = @proto.thumbnails
  end

  def new
    @proto = Proto.new
    @proto.thumbnails.new
  end

  def create
    binding.pry
    Proto.create(create_params)
    redirect_to root_path and return
  end

  def destroy
    Thumbnail.where(proto_id: params[:id]).destroy_all
    Proto.find_by_id(params[:id]).destroy
    redirect_to root_path and return
  end

  def edit
    @proto = Proto.find_by_id(params[:id])
  end

  def update
    proto = Proto.find_by_id(params[:id])
    proto.update(proto_params)
    redirect_to root_path and return
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :catchcopy, :concept, thumbnails_attributes: [:image, :status, :id]).merge(user_id: current_user.id)
  end

end
