class Memo < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :tags, through: :memostags

  accepts_nested_attributes_for :tags
  
end
