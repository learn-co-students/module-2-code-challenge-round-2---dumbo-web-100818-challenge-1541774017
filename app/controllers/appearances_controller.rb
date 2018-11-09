class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(strong_params)
  end

  private

  def strong_params
  end

end
