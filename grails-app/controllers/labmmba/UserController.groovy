package labmmba

import grails.plugin.springsecurity.annotation.Secured

class UserController {

    static allowedMethods = [save:'POST']

    @Secured(['ROLE_ADMIN'])
    def index() {

    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def login(){
    }


    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def create(){
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def save(){
        def role = Role.findByAuthority('ROLE_USER')
        def researcher = new Researcher(lab_job: params.labjob)
        def studies = new Studies(title:params.studies, college:params.college)
        def user = new User(username:params.username, password:params.password, name:params.name)
        researcher.user = user
        researcher.addToStudies(studies)

        if(!researcher.save(flush:true)){
            render view: 'create', model: [user:user]
            return
        }

        UserRole.create user, role, true

        redirect controller: 'researcher', action: 'index'
       // redirect action: 'success' id= '1'
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def success(){
        if(params.id != null){
            redirect controller: 'user', action: 'login'
        }
    }
    def show(){

    }

}
