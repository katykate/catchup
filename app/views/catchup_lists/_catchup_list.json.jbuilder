json.extract! catchup_list, :id, :title, :description, :created_at, :updated_at
json.url catchup_list_url(catchup_list, format: :json)
