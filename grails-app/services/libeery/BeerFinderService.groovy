package libeery

//@Grab('org.codehaus.groovy.modules.http-builder:http-builder:0.7')
//@Grab('oauth.signpost:signpost-core:1.2.1.2')
//@Grab('oauth.signpost:signpost-commonshttp4:1.2.1.2')

import grails.transaction.Transactional
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.ContentType.*
import grails.converters.JSON

@Transactional
class BeerFinderService {

    //should these be static?
    private static final String clientId = 'F0C1E241EC5F6F600D8E3981176E236E44872C61'
    private static final String clientSecret = '1BC8580055ECD222D3BB2BE3996D98DD9B4209F4'

    //def untappd = new RESTClient( 'https://api.untappd.com/v4/')
    def untappd = new HTTPBuilder('https://api.untappd.com/v4/')
    def breweryDB = new HTTPBuilder('http://api.brewerydb.com')

    def getBeerJson(String searchQuery) {
        try {
            def resp = breweryDB.get(path: '/v2/menu/styles',
                                    query:[key: '158d75729502d2655bdd9ca515f35e70',
                                           format: 'json'])
            println(resp)
            return beerJson

        } catch (e) {
            println(e)
        }
    }
}
