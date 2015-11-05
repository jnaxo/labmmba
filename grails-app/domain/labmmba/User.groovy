package labmmba

class User {

    String email
    String password
    Date user_created
    Date last_update

    static belongsTo = [researcher:Researcher]

    static constraints = {
        email (email:true)
        password (blank:false, password:true)
    }
}
