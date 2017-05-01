class Employee < ApplicationRecord

  has_many :appointments


  validates :first_name, presence:true
  validates :first_name, length: { maximum: 50 }
  validates :last_name, presence:true
  validates :last_name, length: { maximum: 50 }
  validates :first_name, uniqueness:true
  validates :last_name, uniqueness:true


end

def first_last_name
  ' ' +self.first_name + ' ' + self.last_name+' '
end

#def appointments_for_employees_list

 # @employee.appointments.map {|app| app.appointment}
#end
