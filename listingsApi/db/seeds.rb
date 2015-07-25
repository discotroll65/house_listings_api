Status.create(name: "active")
Status.create(name: "pending")
Status.create(name: "sold")

status_mapping = {"active" => 0, "pending"=> 1, "sold"=> 2}

raw_listings = File.readlines('bin/listings.csv').map do |listing|
  listing = listing.gsub("\n", "")
  arr = listing.split(',')
  arr.shift
  i =
  arr
end

headers = raw_listings.shift
headers[1] = "status_id"
headers = headers.map{|header| header.to_sym}

raw_listings.each do |listing|
  status = listing[1]
  listing[1] = status_mapping[status]
  House.create(headers.zip(listing).to_h)
end
