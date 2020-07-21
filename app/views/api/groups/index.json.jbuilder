json.set! :groups do
  json.array! @groups do |group|
    json.extract! group, :id, :name, :created_at, :updated_at
  end
end