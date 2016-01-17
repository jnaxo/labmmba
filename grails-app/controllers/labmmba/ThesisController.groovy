package labmmba

import grails.plugin.springsecurity.annotation.Secured

class ThesisController {

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
        def user = User.findById(getPrincipal().id)
        def researcher = user.getResearcher()
        //def thesis = Thesis.findAllByResearcher(researcher)
        render(view: "index", controller: "Thesis")
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def save() {

        def file_name = getPrincipal().id + "_" + System.currentTimeMillis()
        def file = request.getFile('file')
        if (file.empty || file.contentType != "application/pdf") {
            redirect errors
        }

        def path = servletContext.getRealPath("/files/thesis")
        file.transferTo(new File(path, file_name))

        def thesis = new Thesis(
                title: params.title,
                year: params.year,
                journal: params.journal,
                volume: params.volume,
                publisher: params.publisher,
                url: params.turl,
                issn: params.issn,
                doi: params.doi,
                state: params.state
        )

        if(!thesis.save(flush: true)){
            render "error"
        }

        def authors = params.authorlist.tokenize(',')
        def thesis_author

        authors.each { a ->
            if (a.isNumber()) {
                thesis_author = new Thesis_authors(thesis: thesis, researcher: Researcher.get(a)).save()
            } else {
                thesis_author = new Thesis_authors(thesis: thesis, other_authors: a).save()
            }
        }
        redirect view: 'index', controller: 'thesis'

    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def create() {
        def members = Researcher.list()
        render(view: "create", controller: "Thesis", model: [members: members])
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def create_project() {

    }
}
