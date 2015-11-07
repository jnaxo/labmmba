package labmmba

import grails.plugin.springsecurity.annotation.Secured

class UserController {

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

    }

    def logout(){

    }
}
