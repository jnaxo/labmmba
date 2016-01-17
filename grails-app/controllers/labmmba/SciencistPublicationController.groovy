package labmmba

import grails.plugin.springsecurity.annotation.Secured

class SciencistPublicationController {

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() { }
}
