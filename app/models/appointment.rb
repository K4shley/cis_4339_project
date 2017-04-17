class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :activity
  belongs_to :timeslot

  validates :customer_name, presence:true
  validates :date, presence:true
  validates :activity_id, presence:true
  validates :employee_id, presence:true



  validates_uniqueness_of :timeslot_id, scope: [:employee_id, :date]


end
