class GuestEpisodesController < ApplicationController

  def create
    @guest_episode = GuestEpisode.create(guest_episode_params)
  end


  private

  def guest_episode_params
    params.require(:guest_episode).permit(:episode_id, :guest_id)
  end

end
