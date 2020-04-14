json.extract! client, :id, :f_name, :l_name, :birth_month, :birth_day, :birth_year, :license, :created_at, :updated_at
json.url client_url(client, format: :json)
