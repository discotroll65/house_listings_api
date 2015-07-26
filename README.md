# house_listings_api
Demo project playing around with GeoJSON

# How to Use
This is an API endpoint that lets you view the active listings from a dataset of 10,000 houses.

The main API end point can be reached by going to

[https://garrett-house-listing-api.herokuapp.com]

This will redirect you by default to show all the listings:
[/listings][default]
[default][https://garrett-house-listing-api.herokuapp.com]

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
[/listings?min_lat=3900&max_lat=34&min_lng=-112&max_lng=-111][latlonglink]
[latlonglink]: https://garrett-house-listing-api.herokuapp.com/listings?min_lat=3900&max_lat=34&min_lng=-112&max_lng=-111
