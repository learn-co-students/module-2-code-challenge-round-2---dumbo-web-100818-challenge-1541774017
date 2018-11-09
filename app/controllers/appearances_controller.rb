class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.new(appear_params)
    @guests = Guest.all
    @episodes = Episode.all
    if @appearance.save
      redirect_to episode_path(@appearance.episode)
    else
      render :new
    end
  end

  def index
    redirect_to new_appearance_path
  end



private

  def appear_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end


end
