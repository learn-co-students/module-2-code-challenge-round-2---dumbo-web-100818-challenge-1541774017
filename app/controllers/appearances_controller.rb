class AppearancesController < ApplicationController
def index
@appearances = Appearance.all
end

def new
@appearance = Appearance.new
@guests = Guest.all
@episodes = Episode.all
end

def create
@appearance = Appearance.find(params[:id])
@appearance = Appearance.new(appearance_params)
if @appearance.save
  redirect_to episode_path(@appearance.episode)
else
  render :new
end
end

private

def appearance_params
 params.require(:appearance).permit(:guest_id, :episode_id, :rating)
end

end
