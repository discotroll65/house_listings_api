json.type 'FeatureCollection'
json.features @houses do |house|
  json.type 'feature'
  json.geometry do
    json.type 'Point'
    json.coordinates [house.lng, house.lat]
  end

  json.properties do
    json.id house.id
    json.price  house.price
    json.street house.street
    json.bedrooms house.bedrooms
    json.bathrooms house.bathrooms
    json.sq_ft house.sq_ft
  end
end
