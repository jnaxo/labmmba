package labmmba

class Research_collaborator {

    String job
    static belongsTo = [researcher:Researcher, research:Research]

    static constraints = {
    }
}
