class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @guest = @episode.guests
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to @episode
    else
      render :new
  end
end

  def edit
    @episode = Episode.find(params[:id])
  end

def update
  @episode = Episode.find(params[:id])
  if @episode.update(episode_params)
    redirect_to @episode
  else
    render :edit
  end
end
  private

  def episode_params
    params.require(:episode).permit(:date, :number, :rating)
  end


end
