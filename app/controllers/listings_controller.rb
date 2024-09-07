class ListingsController < ApplicationController
    def index
        listings = Listing.includes(:products).all
        render json: listings.as_json(include: :products)
    end

    def show
        listing = Listing.find(params[:id])
        products = listing.products
        render json: { listing: listing, products: products}
    end
end
