json.extract! activity, :id, :name, :price, :duration, :created_at, :updated_at
json.url activity_url(activity, format: :json)