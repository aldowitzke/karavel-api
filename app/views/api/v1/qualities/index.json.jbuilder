json.array! @qualities do |quality|
  json.extract! quality, :id, :name
end