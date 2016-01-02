package labmmba

import grails.plugin.springsecurity.annotation.Secured

class ResearchProjectController {

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() { }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def create(){}
}
