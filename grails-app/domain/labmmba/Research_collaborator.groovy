package labmmba

class Research_collaborator {

    String job
    static belongsTo = [researcher:Researcher, research_project:Research_project]

    static constraints = {
    }
}
