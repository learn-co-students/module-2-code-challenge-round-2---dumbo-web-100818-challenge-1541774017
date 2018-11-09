class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by(id: params[:id])
    @episodes = @guest.episodes
  end
end
