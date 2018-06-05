class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, length: { maximum: 255 },
                format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
                #attr_accessor :password, :password_confirmation 
                 before_save { email.downcase! }
                
 validates :password, length: { minimum: 6 }
 has_secure_password
   validates :image, presence: true
  #belongs_to :company
  has_many :favorites, dependent: :destroy
  has_many :favorite_robs, through: :favorites, source: :rob
  has_many :robs,    dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :categories, dependent: :destroy
  
  mount_uploader :image, ImageUploader
   # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 #
  #field :encrypted_password, :type => String, :default => ""
  
end
