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
        def researcher = new Researcher(lab_job: params.labjob).save()
        def user = new User(username:params.username, password:params.password, name:params.name, researcher: researcher)
        if(!user.save(flush:true)){
            render view: 'create', model: [user:user]
            return
        }

        UserRole.create user, role, true

        redirect action: show, id: user.id
    }

    def show(){
        [user: User.get(params.id)]
        [researcher: Researcher.get(user_id: user.id)]
    }

    def logout(){

    }
}
