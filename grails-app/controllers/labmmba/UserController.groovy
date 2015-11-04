package labmmba

class UserController {

    def scaffold = User

    def index() {
        if(session.user){
            redirect(controller: 'researcher', action:'index')
        } else {
            redirect(controller: 'user', action:'login')
        }
    }

    def login(){
        if(params.login){
            println("login")
        }

    }

    def create(){

    }

    def save(){

    }

    def authenticate = {
        def user = User.findByEmailAndPassword(params.email, params.password)
        if(user){
            session.user = user
            flash.message = "Hello ${user.name}!"
            redirect(controller:"researcher", action:"show")
        }else{
            redirect(controller: 'user', action: 'login', params:[login:'false'])
        }
    }

    def logout(){

    }
}
