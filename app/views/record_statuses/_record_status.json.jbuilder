json.extract! record_status, :id, :code, :description, :about, :created_at, :updated_at
json.url record_status_url(record_status, format: :json)
