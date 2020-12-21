class User < ApplicationRecord
  has_many :posts
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
end
