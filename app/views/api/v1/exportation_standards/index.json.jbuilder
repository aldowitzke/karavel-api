json.array! @standards do |standard|
  json.extract! standard, :id, :species_id, :quality_id, :value
end