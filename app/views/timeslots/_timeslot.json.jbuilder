json.extract! timeslot, :id, :start_time, :end_time, :created_at, :updated_at
json.url timeslot_url(timeslot, format: :json)