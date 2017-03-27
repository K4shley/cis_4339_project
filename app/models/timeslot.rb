class Timeslot < ApplicationRecord
  has_many :appointments
end

def start_end_timeslot
  ' ' +self.start_time.strftime("%I:%M %p") + '-' + self.end_time.strftime("%I:%M %p")+' '
end