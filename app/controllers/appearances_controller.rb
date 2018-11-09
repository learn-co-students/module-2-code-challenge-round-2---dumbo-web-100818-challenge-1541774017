class AppearancesController < ApplicationController
	def new
		@appearance = Appearance.new
	end

	def create
		@appearance = Appearance.find_or_create_by(appearance_params)
		if @appearance.valid?
			redirect_to @appearance.episode
		else
			render :new
		end
	end	

	private

	def appearance_params
		params.require(:appearance).permit(:episode_id, :guest_id, :rating)
	end
end