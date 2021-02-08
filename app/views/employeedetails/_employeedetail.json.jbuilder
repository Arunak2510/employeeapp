json.extract! employeedetail, :id, :first_name, :last_string, :age, :gender, :designation, :created_at, :updated_at
json.url employeedetail_url(employeedetail, format: :json)
