class Activity < ApplicationRecord
  has_many :appointments

  validates :name, presence:true
  validates :name, uniqueness:true
  validates :name, length: { maximum: 100 }
  validates :price, presence:true
  validates :price, numericality: true
  validates_inclusion_of :price, :in => 0.01..100, :message => "must be between $0.01 and $100"


end

