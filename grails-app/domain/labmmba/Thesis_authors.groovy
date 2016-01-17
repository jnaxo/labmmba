package labmmba

class Thesis_authors {

    static belongsTo = [thesis:Thesis, researcher:Researcher]

    String other_authors

    static constraints = {
        researcher nullable:true
    }
}
