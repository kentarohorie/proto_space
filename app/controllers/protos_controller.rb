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
    Proto.create(create_params)
    redirect_to root_path and return
  end

  private
  def create_params
    params.require(:proto).permit(:title, :catchcopy, :concept, thumbnails_attributes: [:image, :status]).merge(user_id: current_user.id, tag_list: params[:proto][:tag])
  end
end
