json.extract! event, :id, :name, :date_event, :responsible, :created_at, :updated_at
json.url event_url(event, format: :json)
