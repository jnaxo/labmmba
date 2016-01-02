package labmmba

class Research_project {

    String description

    static belongsTo = [researcher: Researcher]

    static hasMany = [collaborators:Research_collaborator, research_areas: Research_area]
    static constraints = {
    }
}
