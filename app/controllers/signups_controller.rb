class SignupsController < ApplicationController

    def new
        @signup = Signup.find(params[:location_id])
        @hike = Hike.new
    end

    def show
        @signup = Signup.find(params[:id])
    end

    def edit
        @signup = Signup.find(params[:id])
    end

    def create
        signup = Signup.find_by(hike_id: params[:hike_id], user: current_user)
        if signup
            redirect_to hike_path(signup.hike)
        else
            @signup = Signup.new(hike_id: params[:hike_id], user: current_user)
            if @signup.save
                redirect_to hike_path(@signup.hike)
            else 
                render :new 
            end 
        end
    end

    def update
        @signup = Signup.find(params[:id])
        if @signup.update_attributes(params.require(:signup).permit(:hike_id, :user_id))
            redirect_to hike_path(@signup.hike)
        else
            render :edit
        end
    end
    
    def index
        @signup = Signups.all
    end

end