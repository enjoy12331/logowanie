json.extract! user, :id, :created_at, :updated_at, :name, :surname, :email
json.url user_url(user, format: :json)
