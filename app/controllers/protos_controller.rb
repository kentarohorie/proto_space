class ProtosController < ApplicationController
  def new
    @proto = Proto.new
    4.times {
      @proto.thumbnails.build
    }
  end

  def create
    Proto.create(create_params)
    redirect_to root_path and return
  end

  private
  def create_params
    params.require(:proto).permit(:title, :catchcopy, :concept, thumbnails_attributes: [:image]).merge(user_id: params[:user_id])
  end
end
