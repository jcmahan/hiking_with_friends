class PagesController < ApplicationController
    def show
        page = params[:page]
        render "pages/#{params[:page]}"
    end
end 