FORMAT: 1A
HOST: farmersmarketsapi.heroku.com

# The US Farmers Market API
This API is based on Farmers Market Geographic Data - http://catalog.data.gov/dataset/farmers-markets-geographic-data.
It was designed to allow you to easily find markets by city, state or id and then find the services available at a particular market location.

API created by: http://teddicodes.wordpress.com

#Markets by State [/markets/by_state/{state}]
+ Model
	+ Body

			[
				{
					"id":23,
					"city":"Larimer",
					"state":"Colorado",
					"longitude":-105.073,
					"latitude":40.3954
				},
				{
					"id":92,
					"city":"Alamosa",
					"state":"Colorado",
					"longitude":-105.864687,
					"latitude":37.467893
				}
			]

+ Parameters
	+ state (required, string, `colorado`) ... State name

#Retrieve all Markets by State [GET]
+ Response 200 (application/json)

	[Markets by State][]

#Markets by City [/markets/by_city/{city}]

+ Model
	+ Body

			[  
				{
					"id":1192,
					"city":"Denver",
					"state":"Colorado",
					"longitude":-104.9593,
					"latitude":39.71749
				},
				{
					"id":1304,
					"city":"Denver",
					"state":"Colorado",
					"longitude":-104.9574018,
					"latitude":39.7401841
				}
			]

+ Parameters
	+ city (required, string, `denver`) ... City name

#Retrieve all Markets by City [GET]
+ Response 200 (application/json)

	[Markets by City][]


#Market by id [/market/{id}]
+ Model
	+ Body

			{
				"id":1304,
				"city":"Denver",
				"marketname":"City Park Esplanade Fresh Market",
				"website":"http://www.coloradofreshmarkets.com/",
				"street":"East Colfax Ave. and Columbine St.",
				"county":
				"Denver",
				"state":"Colorado",
				"zip":80206,
				"season1date":"May 13 , 2012 to October 28, 2012",
				"season1time":"sun:9:00 AM - 1:00 PM;",
				"location":"Other",
				"longitude":-104.9574018,
				"latitude":39.7401841
			}

+ Parameters
	+ id (required, number, `1304`) ... Market id number

#Retrieve a Market by id [GET]
+ Response 200 (application/json)

	[Market by id][]

#Market Services by id [/market/{id}/services]

+ Model
	+ Body

			{
				"id":1304,
				"marketname":"City Park Esplanade Fresh Market",
				"city":"Denver",
				"website":"http://www.coloradofreshmarkets.com/",
				"credit":false,
				"wic":false,
				"wiccash":false,
				"sfmnp":false,
				"snap":false,
				"bakedgoods":false,
				"cheese":false,
				"crafts":false,
				"flowers":false,
				"eggs":false,
				"seafood":false,
				"herbs":false,
				"vegetables":false,
				"honey":false,
				"jams":false,
				"maple":false,
				"meat":false,
				"nursery":false,
				"nuts":false,
				"plants":false,
				"poultry":false,
				"prepared":false,
				"soap":false,
				"trees":false,
				"wine":false
			}

+ Parameters
	+ id (required, string, `1304`) ... Numeric id of the market

#Retrieve a Market's services [GET]
+ Response 200 (application/json)

	[Market Services by id][]
