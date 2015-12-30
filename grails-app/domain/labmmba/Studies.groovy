package labmmba

class Studies {
    String title
    boolean posgraduate = false
    String college
    String city
    String country
    int year

    static belongsTo = [researcher:Researcher]


    static constraints = {
        city nullable: true
        country nullable: true
        year nullable: true
    }
}
