class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest= Guest.new
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.valid?
      @guest.save
    redirect_to @guest

else
  render :new
end
end

  private
  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end
end
