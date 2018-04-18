class HikesController < ApplicationController
    before_action :authorize, except: [:index, :show]

    def new
        @location = Location.find(params[:location_id])
        @hike = Hike.new
    end

    def show
        @hike = Hike.find(params[:id])
        puts @hike
        puts params[:id]
    end

    def edit
        @hike = Hike.find(params[:id])
    end

    def create
        loc_id = params[:location_id]
        @hike = Hike.new(params[:hike].delete(:location_id))
        @loc = Location.find(loc_id).hikes << @hike
        redirect_to root_path
    end
    
    def index
        @hikes = Hike.all
    end
end

