package labmmba

class Thesis {

    String title
    String year
    String journal
    int volume
    String publisher
    String url
    int issn
    String doi

    String state

    static hasMany = [authors:Thesis_authors, keywords:Thesis_keyword, commits: Advisor_commit]

    static constraints = {
        keywords nulleable: true
        commits nulleable: true
        year nullable: true
        journal nullable: true
        volume nullable: true
        publisher nullable: true
        url nullable: true
        issn nullable: true
        doi nullable: true
    }
}
