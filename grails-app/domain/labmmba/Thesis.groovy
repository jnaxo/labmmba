package labmmba

class Thesis {

    String title
    String year

    static hasMany = [authors:Thesis_authors, keywords:Thesis_keyword]

    static constraints = {
    }
}
