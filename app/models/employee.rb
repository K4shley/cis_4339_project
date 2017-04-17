class Employee < ApplicationRecord
  belongs_to :shift
  has_many :appointments

  validates :first_name, presence:true
  validates :last_name, presence:true


end

def first_last_name
  ' ' +self.first_name + ' ' + self.last_name+' '
end