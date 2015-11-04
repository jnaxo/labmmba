package labmmba

class Research {

    static hasOne = [research_area: Research_area]
    static hasMany = [collaborators:Research_collaborator]
    static constraints = {
    }
}
