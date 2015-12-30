package labmmba

class Research_area {

    String name

    static hasMany = [researchs:ResearchResearch_area, labs:LabResearch_area, researchers: Researcher]

    static constraints = {
        researchs nullable: true
        researchers nullable: true
    }
}
