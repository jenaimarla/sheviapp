class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :avatar, AvatarUploader



  has_many :photos, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :posters, dependent: :destroy
  has_many :themes, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :libraries, dependent: :destroy
  has_many :creations, dependent: :destroy

end
