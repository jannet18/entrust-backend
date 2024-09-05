class ListingsController < ApplicationController
    def index
        listing = Listing.all
        render json: listing
    end

    def show
        listing = Listing.find(params[:id])
        products = listing.products
    end
end
