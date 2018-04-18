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
        @hike = Hike.new(params.require(:hike).permit(:name, :date)
        @loc = Location.find(params[:location_id]).hikes << @hike

        if @loc.save 
            redirect_to hikes_path
        else 
            render :new 
        end 

    end
    
    def index
        @hikes = Hike.all
    end
end

