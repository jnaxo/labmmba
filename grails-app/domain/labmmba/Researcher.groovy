package labmmba

class Researcher {

    User user
    String lab_job

    static hasOne = [lab:Lab, thesis_advisor: ThesisAdvisor]
    static hasMany = [
            conferences:Conference_assistant,
            sciencist_publications: Sciencist_publication,
            thesis: Thesis_authors,
            researchs: Research_collaborator,
            labs:Lab_member
    ]


    static constraints = {
        lab nulleable: true
        thesis_advisor nulleable: true
        conferences nulleable: true
        sciencist_publications nulleable: true
        thesis nulleable: true
        researchs nulleable: true
        labs nulleable: true
    }
}
