class ProductsController < ApplicationController
    def create
        uploaded_image = params[:image]

        if uploaded_image.present?
            result = Cloudinary::Uploader.upload(uploaded_image.path)

            @product = Product.new(product_params.merge(image_url: result['secure_url']))

            if @product.save
                render json: {status: "Product created successfully", product: @product}, status: :created
            else
                render json: {errors: @product.errors.full_messages}, status: :uprocessable_entity
            end
        else
            render json: {errors: ["Image not provided"]}, status: :uprocessable_entity
        end
    end

    private
    def product_params
        params.require(:product).permit(:name, :description, :price, :image_url)
    end
end
