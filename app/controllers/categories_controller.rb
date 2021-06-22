class CategoriesController < ApplicationController
    def index 
        @categories = Category.all

        render json: @categories
    end

    def show
        render json: @category
    end
end
