class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new params[:id]
  end

  private

  def pin_params
    params.require(:id).permit(:title, :description)
  end
end
