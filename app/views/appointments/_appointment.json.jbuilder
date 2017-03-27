json.extract! appointment, :id, :customer_name, :start_time, :date, :employee_id, :activity_id, :price, :duration, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)