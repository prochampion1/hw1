json.extract! fooditem, :id, :description, :name, :price, :ima_url, :section, :created_at, :updated_at
json.url fooditem_url(fooditem, format: :json)