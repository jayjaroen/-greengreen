class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    authorize @location
  end

end
