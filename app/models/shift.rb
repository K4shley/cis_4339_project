class Shift < ApplicationRecord
  
 # class no longer used in project, but scaffold is kept in order to use the view as a simple view (no editing) for appointments
end

def start_end_time
  ' ' +self.start_time.strftime("%I:%M %p") + '-' + self.end_time.strftime("%I:%M %p")+' '
end
