class GuestEpisodesController < ApplicationController
  def new
    @guest_episode = GuestEpisode.new
  end

  def create
    # @guest_episode = GuestEpisode.new(guest_episode_params)
    # if @guest_episode.save
    #   redirect_to @guest_episode.episode
    # else
    #   render :new
    # end
    @guest_episode = GuestEpisode.create(guest_episode_params)
    redirect_to @guest_episode.episode
  end

  private
  def guest_episode_params
    params.require(:guest_episode).permit(:guest_id, :episode_id, :rating)
  end
end
