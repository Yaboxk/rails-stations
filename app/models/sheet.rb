class Sheet < ApplicationRecord
  validates :column, presence: true
  validates :row, presence: true
  
end