class Activity < ApplicationRecord
  has_many :appointments

  validates :name, presence:true
  validates :price, presence:true


end

