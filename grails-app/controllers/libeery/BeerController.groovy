package libeery

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


}
