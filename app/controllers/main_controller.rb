class MainController < ApplicationController 
    def index
        success: flash.now[:notice] = "You have logged in successfully."
    end
end