class TagsController < ApplicationController
  def index
    @tags = Proto.all_tags
  end

  def show
    tag_name = params[:id]
    @protos = Proto.tagged_with(tag_name).page(params[:page]).per(1)
  end
end
