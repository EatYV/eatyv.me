json.extract! reservation, :id, :first_name, :last_name, :persons, :time, :message, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
