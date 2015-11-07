package labmmba

import grails.plugin.springsecurity.annotation.Secured

class LoginController {

    @Secured('ROLE_ADMIN')
    def index() {
        render 'Secure access only - login controller'
    }
}
