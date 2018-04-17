class HikesController < ApplicationController
    before_action :authorize, except: [:index, :show]

    def new
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
        @hike = Hike.new(hike_params)
        if @hike.save
        redirect_to hike_path(@hike.id)
        else
        redirect_to new_hike_path
        end
    end
    
    def index
        @hikes = Hike.all
    end
