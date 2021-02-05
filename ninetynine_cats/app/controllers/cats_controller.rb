class CatsController < ApplicationController 
    def index 
        cats = Cat.all
        render :cats 
    end

    def show 
        kitty = Cat.find(params[:id])
            render :kitty 
    end


end

