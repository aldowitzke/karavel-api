json.array! @species do |species|
  json.extract! species, :id, :name, :product_id
end