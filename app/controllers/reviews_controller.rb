class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    def create
        @review = Review.create(
            review: params[:review],
            spot_id: params[:spot_id]
        )
        render json: @review
    end

    def update
        @review = Review.find(params[:id])
        @review.update(
            review: params[:review]
        )
        render json: @review
    end

    def destroy
        @reviews = Review.all
        @review = Review.find(params[:id])
        @review.destroy
        render json: @reviews
    end
end
