class Shift < ApplicationRecord
  has_many :employees
end

def start_end_time
  ' ' +self.start_time.strftime("%I:%M %p") + '-' + self.end_time.strftime("%I:%M %p")+' '
end