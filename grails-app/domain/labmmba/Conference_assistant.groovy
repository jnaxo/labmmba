package labmmba

class Conference_assistant {

    static belongsTo = [conference:Conference, researcher:Researcher]

    static constraints = {
    }
}
