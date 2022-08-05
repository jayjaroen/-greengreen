class LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    authorize @location
    @marker = {
      lat: @location.latitude,
      lng: @location.longitude
    }
  end
end
