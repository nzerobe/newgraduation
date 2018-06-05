class Rob < ApplicationRecord
     validates :content, length: { in: 1..1000 }
    validates :title, presence: true
    validates :image, presence: true
      #validates :category, presence: true
    belongs_to :user
    belongs_to :category
    # belongs_to :comment
    has_many :favorites, dependent: :destroy
    has_many :favorite_users, through: :favorites, source: :user
    has_many :comments, dependent: :destroy
    mount_uploader :image, ImageUploader
    # def self.search(search)
    # where("title LIKE ? OR content LIKE ?", "%#{search}%", "%#{search}%") 
    # end
    def self.search(term)
    if term
    where('title LIKE ?', "%#{term}%")
    else
    all
    end
    end
     
end
