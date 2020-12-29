class User < ApplicationRecord
  has_many :posts, dependent: :destroy
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
end
