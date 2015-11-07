package labmmba

class Research {

    String description

    static hasMany = [collaborators:Research_collaborator, research_areas: Research_area]
    static constraints = {
    }
}
