json.array!(@users) do |user|
  json.extract! user, :id, :email, :institutional_email, :firstname, :lastname, :password_digest, :function, :phone, :remember_me_token, :reset_password_token, :reset_password_at, :sign_in_count, :gender, :cellphone
  json.url user_url(user, format: :json)
end
