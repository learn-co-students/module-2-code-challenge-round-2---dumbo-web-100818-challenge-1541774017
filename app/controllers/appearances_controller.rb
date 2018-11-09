class AppearancesController < ApplicationController
    #no index or show needed just new/create
    def new
      @appearance = Appearance.new
      @episodes = Episode.all
      @guests = Guest.all
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.valid?
            @appearance.save
            redirect_to episode_path(@appearance.episode_id)
        #    if  @appearance.save
        else
          flash[:error] = @appearance.errors.full_messages
          redirect_to new_appearance_path
      end
    end

    private
    def appearance_params
      params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
