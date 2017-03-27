class Employee < ApplicationRecord
  belongs_to :shift
  has_many :appointments
end

def first_last_name
  ' ' +self.first_name + ' ' + self.last_name+' '
end