# frozen_string_literal: true

# Pins Controller
class PinsController < ApplicationController
  before_action :find_pin, only: %i[show edit update destroy upvote]
  before_action :authenticate_user!, except: %i[index show]
  def index
    @pins = Pin.all.order('created_at DESC')
  end

  def show; end

  def new
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build pin_params
    if @pin.save
      redirect_to @pin, notice: 'Pin successfully created!'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @pin.update pin_params
      redirect_to @pin, notice: 'Pin successfully updated!'
    else
      render 'edit'
    end
  end

  def destroy
    @pin.destroy
    redirect_to root_path, notice: 'Pin successfully deleted!'
  end

  def upvote
    @pin.upvote_by current_user
    redirect_to :back
  end

  private

  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end

  def find_pin
    @pin = Pin.find params[:id]
  end
end
