package labmmba

class ThesisAdvisor {

    String name
    //User user

    static hasMany = [commits:Advisor_commit, students:Researcher]

    static constraints = {
        commits nulleable: true
      //  user nulleable: true
    }
}
