 class EpisodesController < ApplicationController
   before_action :get_eps, only: [:show]

  def index
    @episodes = Episode.all
  end

    def show
    end

   private

   def get_eps
     @episode = Episode.find(params[:id])
   end

end
