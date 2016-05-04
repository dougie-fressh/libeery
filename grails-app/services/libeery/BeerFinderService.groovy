package libeery

import grails.transaction.Transactional
import groovyx.net.http.RESTClient
import static groovyx.net.http.ContentType.*

@Transactional
class BeerFinderService {

    //should these be static?
    //private static final String untappdClientId = 'F0C1E241EC5F6F600D8E3981176E236E44872C61'
    //private static final String untappdClientSecret = '1BC8580055ECD222D3BB2BE3996D98DD9B4209F4'

    private static final String breweryDBKey = '158d75729502d2655bdd9ca515f35e70'

    //def untappd = new HTTPBuilder('https://api.untappd.com/v4/')
    def breweryDB = new RESTClient('http://api.brewerydb.com/')


    def getAllStyles() {
        try {
            def resp = breweryDB.get(path: '/v2/menu/styles',
                                    query:[key: breweryDBKey,
                                           format: 'json'])

            assert resp.status == 200
            assert resp.contentType == JSON.toString()
            assert ( resp.data instanceof Map )
            assert resp.data.status.size() > 0

            return resp

        } catch (e) {
            println(e)
        }
    }

    def Beer getBeerByStyleId(String styleId) {
        Beer retBeer = new Beer()
        try {
            def resp = breweryDB.get(path: '/v2/beers',
                                    query:[key: breweryDBKey,
                                    styleId: styleId,
                                    order:'random',
                                    randomCount:'1',
                                    format: 'json'])

            assert resp.status == 200
            assert resp.contentType == JSON.toString()
            assert ( resp.data instanceof Map )
            assert resp.data.status.size() > 0

            def beerMap = resp.data

            beerMap.data.each {
                retBeer.name = it.name
                retBeer.style = it.style.category.name

                if (it.abv) {
                    retBeer.abv = Float.parseFloat(it.abv)
                } else {
                    retBeer.abv = 0.0
                }

                retBeer.description = it.description

            }

            return retBeer

        } catch (e) {
            println(e)
        }
    }
}
