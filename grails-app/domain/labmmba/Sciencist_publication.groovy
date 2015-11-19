package labmmba

class Sciencist_publication {

    Date date

    static hasOne = [researcher:Researcher]

    static constraints = {
    }
}
