class User < ApplicationRecord

    
    has_many :contributions
    has_many :projects, through: :contributions
    has_many :participations
    has_many :events, through: :participations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 # mount_uploader :photo, PhotoUploader       
end
