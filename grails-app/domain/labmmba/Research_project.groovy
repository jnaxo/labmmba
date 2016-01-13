package labmmba

class Research_project {

    String title
    String kind
    String description
    String age
    String code

    static belongsTo = [researcher: Researcher]

    static hasMany = [collaborators:Research_collaborator, research_areas: Research_area]
    static constraints = {
        code nullable: true
        age nullable: true
        description nullable: true
        collaborators nullable: true
    }
}
