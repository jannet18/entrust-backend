class Product < ApplicationRecord
    belongs_to :listing
    has_many :variants, dependent: :destroy
    validates :name, :description, :price, presence: true
end
