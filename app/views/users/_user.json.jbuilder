json.extract! user, :id, :name, :sex, :cpf, :identity, :date_birth, :cell_phone, :email, :date_inclusion, :marital_status, :professional, :admin, :active, :created_at, :updated_at
json.url user_url(user, format: :json)
