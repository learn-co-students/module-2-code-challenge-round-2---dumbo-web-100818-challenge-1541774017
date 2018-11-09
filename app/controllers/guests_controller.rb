class GuestsController < ApplicationController
 before_action :get_guests, only:[:show]

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create(guest_controller_params(:name, :occupation))
    redirect_to guest_path(@guest)
  end

  def show
  end

 private

 def get_guests
   @guest = Guest.find(params[:id])
 end

 def guest_controller_params(*args)
   params.require(:guest).permit(*args)
   redirect_to guest_path(@guest)
 end

end
