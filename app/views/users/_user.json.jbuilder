json.extract! user, :id, :username, :user_group_id, :created_at, :updated_at
json.url user_url(user, format: :json)
