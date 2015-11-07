package labmmba

class Thesis {

    String title
    String year
    String journal
    int volume
    String publisher
    String url
    int ISSN
    String DOI

    String state

    static hasMany = [authors:Thesis_authors, keywords:Thesis_keyword, commits: Advisor_commit]

    static constraints = {
        keywords nulleable: true
        commits nulleable: true
    }
}
