json.array! @standards do |standard|
  json.extract! standard, :species_id, :quality_id, :value
end