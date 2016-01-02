package labmmba

class ResearchResearch_area {

    static belongsTo = [research_project:Research_project, research_area:Research_area]

    static constraints = {
    }
}
