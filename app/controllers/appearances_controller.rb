class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new
    @appearance.create(appearance_params)
    redirect_to episode_pat(@episode)
  end


  private
  def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end
end
