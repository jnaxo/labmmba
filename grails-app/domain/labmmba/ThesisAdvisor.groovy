package labmmba

class ThesisAdvisor {

    String name

    static belongsTo = [user:User]
    static hasMany = [commits:Advisor_commit, students:Researcher]

    static constraints = {
        commits nullable: true
        user nullable: true
        students nullable: true
    }
}
