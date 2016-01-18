package labmmba

import grails.plugin.springsecurity.annotation.Secured

class ResearcherController {

    @Secured(['ROLE_ADMIN', 'IS_AUTHENTICATED_ANONYMOUSLY', 'ROLE_USER'])
    def index() {
        if (isLoggedIn()){
            def user = User.findById(getPrincipal().id)
            def user_role = UserRole.findByUser(user)
            //render(view: "index", model:[user: user,researcher:user.getResearcher()])
            render user_role

        }else{
            redirect controller:'User', action: 'login'
        }
    }

    def show(){}

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def list(){
        render(view: "list", model:[controllerName:'Researcher', researchers:Researcher.list()])
    }
}
