package labmmba

class Researcher {

    String lab_job

    static hasOne = [user:User, lab:Lab]
    static hasMany = [
            conferences:Conference_assistant,
            sciencist_publication: Sciencist_publication,
            thesis: Thesis_authors,
            researchs: Research_collaborator,
            labs:Lab_member
    ]

    static constraints = {
    }
}
