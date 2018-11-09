class EpisodesController < ApplicationController

  before_action :set_episode, only: [:show, :update]


  def index
    @episodes = Episode.all
  end

  def show
    @guests = @episode.guests
    @allguests = Guest.all
  end

  def update
    @episode.update(episode_params)
    redirect_to @episode
  end


  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:rating)
  end


end
