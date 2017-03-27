class Appointment < ApplicationRecord
  belongs_to :employee
  belongs_to :activity
  belongs_to :timeslot
end
