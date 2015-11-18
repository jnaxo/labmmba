package labmmba

class Studies {
    String title
    boolean pregraduate
    String college
    String city
    String country
    int year

    static belongsTo = [researcher:Researcher]


    static constraints = {
    }
}
