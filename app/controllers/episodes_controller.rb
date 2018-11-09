class EpisodesController < ApplicationController


  def new
    @episode = Episode.new
  end

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def create
    @episode = Episode.create(episode_params)
    if @episode.save
    redirect_to episode_path(@episode)
  else
    render :new
  end
end

  private

  def episode_params
    params.require(:episode).permit(:date, :number, :rating, :guest_id)
  end


end
