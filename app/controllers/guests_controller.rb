class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    guest_find
  end

#   def new
#     @guest = Guest.new
#   end
#
#   def create
#     @guest = Guest.new(guest_params)
#     if @guest.save
#       redirect_to @guest
#     else
#       render :new
#     end
#   end
#
#   def edit
#     guest_find
#   end
#
#   def update
#     if @guest.save
#       redirect_to @guest
#     else
#       render :edit
#     end
#   end
#
end
#
# private
#
# def guest_find
#   @guest= Guest.find(params[:id])
# end
#
# def guest_params
#   params.require(:guest).permit(:name, :occupation, :guest_id)
# end
