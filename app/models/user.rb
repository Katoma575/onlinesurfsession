class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true       
  
  # has_many :comments
  has_many :movies, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def self.guest
      find_or_create_by!(email:'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "marin" 
      
      end
  end
  
  def already_favorited?(movie)
    self.favorites.exists?(movie_id: movie.id)
  end  
end

