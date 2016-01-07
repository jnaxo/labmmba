package labmmba

class Conference {

    Date date
    String place
    String city
    String country

    static hasMany = [assistants: Conference_assistant]

    static constraints = {
    }
}
