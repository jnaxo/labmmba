package labmmba

class Researcher {

    User user
    String lab_job

    static hasOne = [lab_management:Lab, thesis_advisor: ThesisAdvisor, research_area:Research_area]
    static hasMany = [
            conferences:Conference_assistant,
            sciencist_publications: Sciencist_publication,
            thesis: Thesis_authors,
            researchs: Research_collaborator,
            labs:Lab_member,
            studies: Studies
    ]

    @Override
    String toString() {
        user.toString()
    }

    static mappedBy = [
            lab_management: "director",
            conferences: "assistant",
            sciencist_publications: "author"
    ]

    static constraints = {
        lab_management nullable: true
        thesis_advisor nullable: true
        research_area nullable: true
        conferences nullable: true
        sciencist_publications nullable: true
        thesis nullable: true
        researchs nullable: true
        labs nullable: true
        studies nullable: true
    }
}
