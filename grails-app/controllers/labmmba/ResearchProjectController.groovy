package labmmba

import grails.plugin.springsecurity.annotation.Secured

class ResearchProjectController {

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
        def user = User.findById(getPrincipal().id)
        def researcher = user.getResearcher()
        def projects = Research_project.findAllByResearcher(researcher)
        render (view: "index", model: [projects: projects])
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def create(){
        def research_areas = Research_area.list()
        render(view: "create", model:[research_areas: research_areas])
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def save(){

        def user = User.findById(getPrincipal().id)
        def researcher = user.getResearcher()
        def research_project = new Research_project(
                title: params.title,
                kind: params.kind,
                description: params.description,
                age: params.age,
                researcher: researcher
            ).addToResearch_areas(Research_area.get(params.areas))

        if(!research_project.save(flush:true)){
            render view: 'error'
            return
        }
        redirect controller: 'ResearchProject', action: 'index'
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def show() {
        render (view: "show", model: [project: Research_project.get(params.id)])
    }

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def list(){
        render (view: "list", model: [research_areas: Research_area.list(), projects: Research_project.list()])
    }

}
