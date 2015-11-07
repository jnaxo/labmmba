package labmmba

class Lab {

    String name
    String address
    String phone

    static hasOne = [lab_head:Researcher, director:Researcher]
    static hasMany = [members:Lab_member, research_areas:LabResearch_area, events:Lab_event]

    static constraints = {
    }
}
