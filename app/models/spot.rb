class Spot < ApplicationRecord
    validates :title, presence: true
    has_many_attached :images
    has_many :reviews, dependent: :destroy
end
