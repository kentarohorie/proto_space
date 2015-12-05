class ProtosController < ApplicationController
  def new
    @proto = Proto.new
    4.times {
      @proto.thumbnails.build
    }
  end

  def create
  end

  private
  def create_params
  end
end
