class MainController < ApplicationController 
    def index
        flash.now[:notice] = "You have logged in successfully!"
    end
end