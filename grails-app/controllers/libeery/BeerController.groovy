package libeery

import grails.plugin.springsecurity.*

class BeerController {

    def beerFinderService
    def springSecurityService

    def index() {
        //landing page after login
        //hard coded random beer info
    }

    def myLibeery() {
        def user = springSecurityService.currentUser
        //def beerList = user.getUserBeers()
        def beerList = Beer.findAll()
        beerList.sort{it.name}
        [allBeers: beerList]
    }

    def questionnaire() {

        //questions and associated styles courtesy of Nicky-O
        def qMap1 = ['MALT and FRUIT': 'Orange Juice',
                    'SOFT':'Milk',
                    'DARK':'Coffee',
                    'CRISP':'Tea']

        def qMap2 = ['MALT':'Start Swinging',
                    'TART':'Talk quickly and de-escalate the situation.',
                    'SMOKE':'Talk loud and intimidating; get the other guy to back down',
                    'HOP':'Say nothing and stare dead-eyed into the guy’s soul']

        def qMap3 = ['HOP and SMOKE':'Leap off of the couch and drag your friend to a bar, where you meet people and get rather inebriated.',
                    'CRISP and MALT':'Call a few of your mutual friends, go to a restaurant, and have a nice intimate conversation over drinks.',
                    'TART and FRUIT':'Open that bottle of wine you’ve been saving, share it with your friend, and have a deep talk about the meaning of life.',
                    'CRISP':'Open that bottle of wine you’ve been saving, kick your friend out, and have a quiet evening doing (insert hobby) by yourself.']

        def qMap4 = ['SMOKE and TART':'Gather firewood, chop it up',
                    'ROAST':'Set up the tent.',
                    'FRUIT':'Seek out those wildberries you heard grow in the area.',
                    'HOP':'Play guitar and rock out.']


        [qMap1:qMap1, qMap2:qMap2, qMap3:qMap3, qMap4:qMap4]
    }

    def myprofile() {
    }

    def generateBeerList() {

        def beerList = new ArrayList<Beer>()
        def masterList = []
        def randomList = []
        int beerCount = 15
        Random randomizer = new Random();

        //these numbers corresspond to a styleId which falls into these categories
        //courtesy of Nicky-O
        def crispList = ['109', '36', '113', '112', '45', '1', '86', '101', '80', '102', '78', '98', '56', '92', '2', '30', '31', '158']
        def hopList = ['3', '1', '2', '62', '110', '32', '33', '34', '25', '26', '30', '31']
        def maltList = ['10', '103', '12', '52', '54', '90', '91', '4', '7', '8', '9', '22', '71', '62', '4', '14', '15', '35', '17']
        def roastListSoft = ['84', '18', '20', '21', '12', '158', '24']
        def roastListDark = ['23', '41', '37', '19', '42', '16', '43']
        def smokeList = ['129', '51', '38', '54']
        def fruitList = ['49', '65', '48', '62', '72', '119', '59', '52', '64', '58', '53', '60']
        def tartList = ['57', '170', '68', '72', '67', '66']

        params.each{
            if (it.toString().contains('CRISP')){
                masterList += crispList
                //println('added crisp')
            }
            if (it.toString().contains('HOP')){
                masterList += hopList
                //println('added hop')
            }
            if (it.toString().contains('MALT')){
                masterList += maltList
                //println('added malt')
            }
            if (it.toString().contains('SOFT')){
                masterList += roastListSoft
                //println('added soft roast')
            }
            if (it.toString().contains('DARK')){
                masterList += roastListDark
                //println('added dark roast')
            }
            if (it.toString().contains('ROAST')){
                masterList += roastListDark + roastListSoft
                //println('added both roasts')
            }
            if (it.toString().contains('SMOKE')){
                masterList += smokeList
                //println('added smoke')
            }
            if (it.toString().contains('FRUIT')){
                masterList += fruitList
                //println('added fruit')
            }
            if (it.toString().contains('TART')){
                masterList += tartList
                //println('added tart')
            }
        }

        //println "master style list = ${masterList}"

        (1..beerCount).each {
            String styleId = masterList.get(randomizer.nextInt(masterList.size()));

            //println('styleId = ' + styleId)

            def beer = beerFinderService.getBeerByStyleId(styleId) //should be three random beers with this style

            beer.save()

            beerList.add(beer)
        }


        [beerList: beerList.sort{it.name}]

    }

    def addUserBeers() {
        def user = springSecurityService.currentUser
        params.each{
            println 'param = ' + it
            if (it.value == 'on') {
                user.addToUserBeers(Beer.findById(9))
            }

        }
        redirect(action:"myLibeery")
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
