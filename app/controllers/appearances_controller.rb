class AppearancesController < ApplicationController

def create
    @appearance = Appearance.new(guest_id: params[:appearance][:guest_id],episode_id: params[:appearance][:episode_id],rating:  params[:appearance][:rating])
  if @appearance.save
    redirect_to episode_path(@appearance.episode_id)
  else
    render :new
  end 
end

def new
  @appearance = Appearance.new()
end

def appearance_params
  params.require(:appearance).permit(:guest_id, :episode_id, :rating)
end

end
