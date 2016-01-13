package labmmba

import grails.plugin.springsecurity.annotation.Secured

class ResearcherController {

    @Secured(['ROLE_ADMIN', 'IS_AUTHENTICATED_ANONYMOUSLY', 'ROLE_USER'])
    def index() {
        if (isLoggedIn()){
            def user = User.findById(getPrincipal().id)
            render(view: "index", model:[user: user,researcher:user.getResearcher()])

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
