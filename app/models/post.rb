class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes
    validates :title, presence: true, length: { maximum: 50 }
    validates :content, presence: true, length: { maximum: 140 }
end
