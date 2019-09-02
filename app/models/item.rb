class Item < ApplicationRecord
    validates :title,  presence: true,length: {maximum: 40}
                
    validates :description, presence: true, length: {maximum: 500}

    validates :image_url, format: {with: /\.(png|jpg|gif)\Z/i}

    validates :price, presence: true, numericality: { greater_than: 0 }


end
