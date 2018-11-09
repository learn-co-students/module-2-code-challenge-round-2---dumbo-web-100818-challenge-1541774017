class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(strong_params)
    redirect_to guest_path(@guest)
  end

  def show
    @guest = Guest.find(params[:id])
  end

  private

  def strong_params
    params.require(:guest).permit(:name, :occupation)
  end


end
