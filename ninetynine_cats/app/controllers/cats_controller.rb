class CatsController < ApplicationController 
    def index 
        @cats = Cat.all
        render :index 
    end

    def show 
        @kitty = Cat.find(params[:id])
        if @kitty
            render :show
        else
            redirect_to cats_url
        end
        
    end


    def new
        render :new
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            render :create
        else
            render json: @cat.errors.full_messages, status: :unprocessable_entity 
        end
    end



    private
    def cat_params
        cat_params = params.require(:cat).permit(:name, :birth_date, :color, :sex, :description)
    end

end

#  def method
#     var = 3
#     function
#  end

#  def function
#     var + 1
#  end