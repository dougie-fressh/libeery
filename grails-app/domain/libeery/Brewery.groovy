package libeery

class Brewery {

    static hasMany = [beers: Beer]

    static constraints = {
    }

    String name
    String country
    String city
    List beers
    long latitude
    long longitude

    //location": {
    //    "brewery_address": "40 Van Dyke Street",
    //    "brewery_city": "Brooklyn",
    //    "brewery_state": "NY",
    //    "brewery_lat": 40.6739,
    //    "brewery_lng": -74.0119
    //},

}
