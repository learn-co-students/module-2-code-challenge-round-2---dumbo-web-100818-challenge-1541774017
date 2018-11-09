class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(strong_params)
    redirect_to episode_path(@guest)
  end

  def show
    @episode = Episode.find(params[:id])
  end

  private

  def strong_params
    params.require(:episode).permit(:date, :number)
  end



end
