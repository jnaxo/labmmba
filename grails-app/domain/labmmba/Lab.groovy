package labmmba

class Lab {

    String name
    String address
    String phone
    //Researcher lab_head
    Researcher director

    //static hasOne = [director:Researcher]
    static hasMany = [members:Lab_member, research_areas:LabResearch_area, events:Lab_event]

    static constraints = {
        director nullable: true
    }
}
