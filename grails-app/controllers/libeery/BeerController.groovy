package libeery

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

class BeerController {

    def beerFinderService

    def index() {
        //landing page after login
        //hard coded random beer info
    }

    def myLibeery() {
        //this is where the beer list is
    }

    def questionnaire() {
        //this is where the questions are
    }

    def myprofile() {
    }

    def generateBeerList() {
        String beerJson = beerFinderService.getBeerJson()
        println(beerJson)
        [beerJson: beerJson]
    }

    def brewery() {

    }

    def signup() {

    }

    def register() {
        def userRole = new Role('ROLE_USER').save()
        def user = new User(params.username, params.password).save()
        UserRole.create user, userRole
        redirect(action:"auth", controller:"login")
    }

    def logout() {
        redirect uri: SpringSecurityUtils.securityConfig.logout.filterProcessesUrl
    }
}
