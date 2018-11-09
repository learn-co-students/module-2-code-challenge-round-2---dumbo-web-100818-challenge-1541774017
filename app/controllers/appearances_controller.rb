class AppearancesController < ApplicationController

  # def index
  #   @
  #   render :new
  # end

  def new
    @appearance = Appearance.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
    @guests = Guest.all
    @episodes = Episode.all
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to episode_path(@appearance.episode_id)
    else
      render :new
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
