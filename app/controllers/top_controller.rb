class TopController < ApplicationController
  def index
    User.create(email: params[:email])
  end
end
