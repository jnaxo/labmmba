package labmmba

class Lab_event {

    String place
    Date date
    String description

    static hasOne = [lab:Lab]

    static constraints = {
    }
}
