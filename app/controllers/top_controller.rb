class TopController < ApplicationController
  def index
    # User.create(email: params[:email])
    @protos = Proto.all
  end
end
