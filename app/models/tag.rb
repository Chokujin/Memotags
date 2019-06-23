class Tag < ApplicationRecord
  has_many :memostags
  has_many :memos, through: :memostags, source: :memo
  
end
