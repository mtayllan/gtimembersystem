class User < ApplicationRecord

  has_many :contributions
  has_many :projects, through: :contributions
  has_many :participations
  has_many :events, through: :participations
  
  mount_uploader :photo, AvatarUploader
  
  scope :search, ->(term, page = 1) {
    where("lower(name) LIKE ?", "%#{term.downcase}%").order(:name).page(page).per(6)
  }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # mount_uploader :photo, PhotoUploader       
end
