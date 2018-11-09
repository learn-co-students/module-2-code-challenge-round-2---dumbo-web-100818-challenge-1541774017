class EpisodesController < ApplicationController
  before_action :fetch_episode, only: [:show,:update,:edit]
  def index
    @episodes = Episode.all
  end

  # def new
  #   @episode = Episode.new
  # end
  #
  # def create
  #   @episode = Episode.create(episode_params)
  #   redirect_to episode_path(@episode)
  # end

  def show
    @guests = @episode.guests
  end

  # def edit
  # end

  # def update
  #   @episode = Episode.update(episode_params)
  #   redirect_to
  # end

  private

  def fetch_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:epsiode).permit(:date,:number)
  end
end
