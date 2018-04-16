class LocationsController < ApplicationController
    def new
        @location = Location.new
    end

    def show
        @location = Location.find(params[:id])
    end

    def index
        @location = Location.all
    end

end
