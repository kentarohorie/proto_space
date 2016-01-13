class Prototypes::CommentsController < ApplicationController
  def create
    Comment.create(create_params)
    @comments = Comment.where(proto_id: params[:proto_id])
  end

  private
  def create_params
    params.require(:comment).permit(:comment).merge(proto_id: params[:proto_id])
  end
end
