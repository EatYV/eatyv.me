json.extract! recipe, :id, :title, :price, :duration, :description, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
