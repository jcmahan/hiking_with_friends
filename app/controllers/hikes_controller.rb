class HikesController < ApplicationController
    before_action :authorize, except: [:index, :show]

    def new
        @location = Location.find(params[:location_id])
        @hike = Hike.new
    end

    def show
        @hike = Hike.find(params[:id])
        @users = @hike.users
        @locations = @hike.location

    end

    def edit
        @hike = Hike.find(params[:id])
    end

    def create
        @hike = Hike.new(params.require(:hike).permit(:name, :date))
        @hike.user = current_user
        @loc = Location.find(params[:location_id]).hikes << @hike

        if @hike.save
            redirect_to hikes_path
        else 
            render :new 
        end 

    end

    def update
        @hike = Hike.find(params[:id])
        if @hike.update_attributes(params.require(:hike).permit(:name, :date))
            redirect_to hike_path(@hike)
        else
            render :edit
        end
    end
    
    def index
        @hikes = Hike.all
    end

    def destroy
        @hike = Hike.find(params[:id])
        @hike.destroy
        redirect_to root_path
    end

    private
    def hike_params
        params.require(:hike).permit(user_ids: [])
    end
end

