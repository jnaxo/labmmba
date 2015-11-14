package labmmba

class ThesisAdvisor {

    String name

    static belongsTo = [user:User]
    static hasMany = [commits:Advisor_commit, students:Researcher]

    static constraints = {
        commits nulleable: true
        user nulleable: true
    }
}
