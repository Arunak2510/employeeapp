json.extract! employeedocument, :id, :first_name, :last_name, :age, :gender, :designation, :created_at, :updated_at
json.url employeedocument_url(employeedocument, format: :json)
