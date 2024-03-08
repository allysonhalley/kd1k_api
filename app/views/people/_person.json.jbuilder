json.extract! person, :id, :name, :cpf, :birthday, :place_birth, :nationality, :gender, :marital_status, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
