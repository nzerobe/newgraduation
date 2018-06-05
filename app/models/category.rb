class Category < ApplicationRecord
  
    validates :name,  presence: true, length: { maximum: 300 }
    has_many :robs
    belongs_to :user
    
    
end
