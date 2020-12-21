class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.create(rec_params)
        redirect_to @recipe
    end

    private

    def rec_params
        params.require(:recipe).permit(:name)
    end


end
