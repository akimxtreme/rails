json.extract! user, :id, :nickname, :first_name, :genders_id, :created_at, :updated_at
json.url user_url(user, format: :json)
