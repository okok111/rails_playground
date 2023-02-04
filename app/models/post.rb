class Post < ApplicationRecord
    belongs_to :user
    mount_uploader :image, ImageUploader
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    has_many :comments, dependent: :destroy
    has_many :post_ingredient, dependent: :destroy
    accepts_nested_attributes_for :post_ingredient, allow_destroy: true
end
