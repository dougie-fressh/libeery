package libeery

class Beer {

    static constraints = {
        name blank:false
        style blank:false
        abv min:0
        ibu min:0
        description blank:false
        rating min:0, max:10

    }

    String name
    String style
    long abv
    long ibu
    String description
    long rating
    Brewery brewery

}
