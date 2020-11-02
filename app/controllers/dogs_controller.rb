class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end
    
    def sort
        @dogs = Dog.all
        @dogs = @dogs.sort_by {|dog| dog.name}
        render :index
    end
    
end
