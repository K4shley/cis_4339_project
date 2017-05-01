class Timeslot < ApplicationRecord
  has_many :appointments
  validates :start_time, presence:true
  validates :end_time, presence:true


end

def start_end_timeslot
  ' ' +self.start_time.strftime("%I:%M %p") + '-' + self.end_time.strftime("%I:%M %p")+' '
end