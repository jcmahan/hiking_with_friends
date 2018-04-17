class HikesController < ApplicationController
    before_action :authorize, except: [:index, :show]