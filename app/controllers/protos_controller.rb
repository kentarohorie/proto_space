class ProtosController < ApplicationController
  def new
    @proto = Proto.new
    3.times {
      @proto.thumnails.build
    }
  end

  def create
  end

  private
  def create_params
  end
end
