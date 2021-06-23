class Api::V1::CategoriesController < ApplicationController
    def index 
        @categories = Category.all

        render json: @categories
    end

    def show
        render json: @category
    end

    def destroy
        category = Category.find(params[:id])
        category.destroy
    end

    private 
    
    def category_params
        params.permit(:name)
    end
end
