# house_listings_api
Demo project playing around with GeoJSON

# How to Use
This is a JSON API endpoint that lets you view the active listings from a dataset of 10,000 houses.

This, as well as any JSON API, will be infinitely more enjoyable to use if you have the following
chrome extension ( called JSONView) installed, which will format your JSON into nice collapseable tidbits:
https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=en-US

The main API end point can be reached by going to

[https://garrett-house-listing-api.herokuapp.com]

This will redirect you by default to show all the listings:
[https://garrett-house-listing-api.herokuapp.com/listings]

However, you can search by various filters:
## Filter by Price, between 100,000 and 200,000
[/listings?min_price=100000&max_price=200000][pricelink]
[pricelink]: https://garrett-house-listing-api.herokuapp.com/listings?min_price=100000&max_price=200000

## Filter by Number of Bedrooms
[/listings?min_bed=2&max_bed=4][bedlink]
[bedlink]: https://garrett-house-listing-api.herokuapp.com/listings?min_bed=2&max_bed=4

## Filter by Number of Bathrooms
[/listings?min_bath=3&max_bath=4][bathlink]
[bathlink]: https://garrett-house-listing-api.herokuapp.com/listings?min_bath=3&max_bath=4

# Some extra bonus features are below
## Filter by Square Footage
[/listings?min_sq_ft=3900&max_sq_ft=4000][sqftlink]
[sqftlink]: https://garrett-house-listing-api.herokuapp.com/listings?min_sq_ft=3900&max_sq_ft=4000

## Filter by lat/ long 
[/listings?min_lat=33.52&max_lat=33.53&min_lng=-111.89&max_lng=-111.87][latlonglink]
[latlonglink]: https://garrett-house-listing-api.herokuapp.com/listings?min_lat=33.52&max_lat=33.53&min_lng=-111.89&max_lng=-111.87

#Ways this could be cooler
If I were to hack on this some more, it could be cool to look into another third party API I could hit to return the 4 lat long points that define the smallest square completely enveloping a particular zipcode; then people could also search by zipcode.

It could also be helpful to have a "total count of results" key value at the top as well.

More ideas include:
* Letting people specify status as well, so they could see what reason houses sold for
* Setting a limit on the results, so it isn't so overwhelming
