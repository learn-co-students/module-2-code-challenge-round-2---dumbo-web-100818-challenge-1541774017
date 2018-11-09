class EpisodeguestsController < ApplicationController

  def new
    @episode_guest = Episodeguest.new
  end

  def create
    @episode_guest = Episodeguest.create(join_params)
    if @episode_guest.valid?
      redirect_to @episode_guest.episode
    else
      render :new
    end
  end

  private

  def join_params
    params.require(:episodeguest).permit(:guest_id, :episode_id, :rating)
  end

end
