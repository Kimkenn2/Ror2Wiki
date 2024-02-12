json.extract! item, :id, :name, :rarity, :desc, :imageurl, :dlc, :created_at, :updated_at
json.url item_url(item, format: :json)
