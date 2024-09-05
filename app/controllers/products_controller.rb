class ProductsController < ApplicationController
    before_action :set_category

    def index
        product = Listing.all
        render json: product
    end

    def show
        product = Listing.products.find(params[:id])
        render json: product
    end

    def create
        uploaded_image = params[:image]

        if uploaded_image.present?
            result = Cloudinary::Uploader.upload(uploaded_image.path)
            @product = Listing.new(product_params.merge(image_url: result['secure_url']))

            if @product.save
                render json: {status: "Product created successfully", product: @product}, status: :created
            else
                render json: {errors: @product.errors.full_messages}, status: :uprocessable_entity
            end
        else
            render json: {errors: ["Image not provided"]}, status: :uprocessable_entity
        end
    end

    def updated
        product = Listing.find(params[:id])
        product.update(product_params)
        render json: {product: product, message: "Product has been updated successfully."}
    end

    def destroy
        product = Listing.find(params[:id])
        product.destroy
        render json: {message: "Product deleted."}
    end


    private

    def set_category
        listing = Listing.find(params[:listing_id])
    end
    
    def product_params
        params.require(:product).permit(:name, :description, :price, :image_url, :quantity, :price)
    end
end
