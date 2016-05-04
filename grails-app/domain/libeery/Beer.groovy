package libeery

class Beer {

    static constraints = {
        //name blank:false
        //style blank:false
        //abv min:0.0
        description size:1..5000

    }

    String name
    String style
    float abv
    String description

}
