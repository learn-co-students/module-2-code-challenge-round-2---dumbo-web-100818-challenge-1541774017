class AppearancesController < ApplicationController

  def index
    @appearances = Guest.all
  end

  def show
    @appearance = Guest.find(params[:id])
  end

  def new
    @appearance = Appearance.new
  end

  def edit
    @appearance = Appearance.find(params[:id])

  end

  def create
    @appearance = Appearance.create(appearance_params)
    redirect_to @appearance
  end

  def update
    @appearance = Appearance.udpate(appearance_params)

  end
  private

  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end

end
