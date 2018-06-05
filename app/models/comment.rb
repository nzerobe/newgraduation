class Comment < ApplicationRecord
  belongs_to :rob
  belongs_to :user
  # validates :name, presence: true
  validates :content, presence: true
   
end
