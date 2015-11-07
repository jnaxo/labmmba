package labmmba

class Research_area {

    String name

    static hasMany = [researchs:ResearchResearch_area, labs:LabResearch_area]

    static constraints = {
        researchs nulleable: true
    }
}
