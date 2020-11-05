class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true       
  
  # has_many :comments
  has_many :movies, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  
  def already_favorited?(movie)
    self.favorites.exists?(movie_id: movie.id)
  end  

  def self.guest
      find_or_create_by(email: 'test@com') do |user|
        user.password = Rails.application.secrets.test_account_pass
      
      end
  end
end

