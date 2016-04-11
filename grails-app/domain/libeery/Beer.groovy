package libeery

class Beer {

    static constraints = {
        name blank:false
        style blank:false
        //abv min:0.0
        //ibu min:0.0
        description blank:false
        //rating min:0.0, max:10.0

    }

    String name
    String style
    float abv
    float ibu
    String description
    float rating
    Brewery brewery

}
