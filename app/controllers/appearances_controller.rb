class AppearancesController < ApplicationController

  def index
    redirect_to episodes_path
  end
def new
  @appearance = Appearance.new
  @guests = Guest.all
  @episodes = Episode.all
end

def create
@appearance = Appearance.new(appearance_params)
if @appearance.valid?
  @appearance.save
  redirect_to @appearance.episode
else
  render :new
end
end

private

def appearance_params
  params.require(:appearance).permit(:guest_id, :episode_id, :rating)
end
end
