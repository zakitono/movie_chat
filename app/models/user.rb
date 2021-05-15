class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :entries
  has_many :messages
  has_many :rooms, through: :entries
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  
  validates :username, presence: true
  validates :movie_a, length: { maximum: 50 }
  validates :movie_b, length: { maximum: 50 }
  validates :movie_c, length: { maximum: 50 }
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable
  
         def self.guest
          find_or_create_by!(email: 'guest@example.com') do |user|
            user.password = SecureRandom.urlsafe_base64
            user.username = 'ゲストユーザー'
            user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
          end
        end

        def update_without_current_password(params, *options)
          params.delete(:current_password)
          if params[:password].blank? && params[:password_confirmation].blank?
            params.delete(:password)
            params.delete(:password_confirmation)
          end
          result = update_attributes(params, *options)
          clean_up_passwords
          result
        end

        def own?(object)
          id == object.user_id
        end

        def like(post)
          likes.find_or_create_by(post: post)
        end

        def like?(post)
          like_posts.include?(post)
        end

        def unlike(post)
          like_posts.delete(post)
        end
end
