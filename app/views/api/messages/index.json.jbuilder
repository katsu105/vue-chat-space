json.set! :messages do
  json.array! @messages do |message|
    json.extract! message, :message
  end
end