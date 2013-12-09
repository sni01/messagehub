json.array!(@messages) do |message|
  json.extract! message, :id, :app_id, :username, :active, :to, :from, :EncryptedMessage
  json.url message_url(message, format: :json)
end
