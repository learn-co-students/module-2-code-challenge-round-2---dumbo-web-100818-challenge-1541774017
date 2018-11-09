class GuestEpisodesController < ApplicationController
  def create
    @guest_episode = GuestEpisode.new(guest_episodes_params)
    if @guest_episode.save
      redirect_to @guest.episode
    else
      render :new
  end
end
private

def guest_episodes_params
  params.require(:guest_episode).permit(:guest_id, :episode_id)
end


end
