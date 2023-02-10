class SpotsController < ApplicationController
    def index
        spots = params[:sort] == 'price' ? Spot.all.order('price') : Spot.all
        res_spots = []

        spots.each do |spot|
            urls = []

            spot.images.each do |image|
              urls.push(rails_blob_url(image))
            end
      
            res_spots.push({
                id: spot.id,
                title: spot.title,
                description: spot.description,
                price: spot.price,
                images: urls,
                reviews: spot.reviews
            })
        end

        render json: res_spots
    end

    def reviews
        @reviews = Review.where(spot_id: params[:spot_id])
        render json: @reviews
    end

    def show
        @spot = Spot.find(params[:id])
        render json: @spot
    end

    def create
        @spot = Spot.create!(spot_params)
        render json: @spot
    end

    def update
        @spot = Spot.find(params[:id])
        @spot.update(
            title: params[:title],
            description: params[:description],
            price: params[:price]
        )
        render json: @spot
    end

    def destroy
        @spots = Spot.all
        @spot = Spot.find(params[:id])
        @spot.destroy
        render json: @spots
    end

    private
        def spot_params
            params.permit(:title, :description, :price, :images => [])
        end
end
