class ListingsController < ApplicationController
    def index
        listing = Listing.includes(products: :variants).all
        render json: listing.as_json(include: {
            products: {include: :variants}
        })
    end

    def show
        listing = Listing.find(params[:id])
        products = listing.products
    end
end
