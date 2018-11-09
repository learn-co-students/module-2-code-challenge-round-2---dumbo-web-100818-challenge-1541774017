class GuestEpisodesController < ApplicationController
  def index
    @guest_episodes = Episode.all
  end

  def show
    guest_find
  end

  def new
    @guest_episode = Guest_episode.new
  end

  def create
    @guest_episode = Guest_episode.new(guest_params)
    if @guest_episode.save
      redirect_to @guest_episode
    else
      render :new
    end
  end

  def edit
    guest_find
  end

  def update
    if @guest_episode.save
      redirect_to @guest_episode
    else
      render :edit
    end
  end

end


private

def guest_find
  @guest_episode= Guest_Episode.find(params[:id])
end

def guest_params
  params.require(:guest_episode).permit(:episode_id, :rating, :guest_id)
end
