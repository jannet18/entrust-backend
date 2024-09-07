class Product < ApplicationRecord
    belongs_to :listing
    validates :name, :description, :price, :image_url, presence: true
end
