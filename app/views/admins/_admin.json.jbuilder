json.extract! admin, :id, :login, :password, :name, :surname, :created_at, :updated_at
json.url admin_url(admin, format: :json)