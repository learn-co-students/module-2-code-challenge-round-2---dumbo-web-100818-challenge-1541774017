class EpisodeGuestsController < ApplicationController
  def new
    @appearance = EpisodeGuest.new
    @episode = Episode.all
    @guests = Guest.all
  end
#I am aware that this does not work and does not have a rating
  def create
    @episode =Episode.find(episode_guest_params)
    @appearance = EpisodeGuest.create(episode_guest_params)
    redirect_to episode_path(@episode)
  end


  private

  def episode_guest_params(*args)
    params.require(:episode_guest).permit(*args)

  end
end
