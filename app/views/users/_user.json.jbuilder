json.extract! user, :id, :name, :weight, :height, :vitaminC, :vitaminD, :iron, :created_at, :updated_at
json.url user_url(user, format: :json)
