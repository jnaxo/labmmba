import labmmba.Researcher
import labmmba.Studies
import labmmba.Role
import labmmba.User
import labmmba.UserRole


class BootStrap {


    def init = {

        def adminRole = new Role('ROLE_ADMIN').save()
        def userRole = new Role('ROLE_USER').save()
        def anonymously = new Role('IS_AUTHENTICATED_ANONYMOUSLY').save()

        def researcher = new Researcher()
        researcher.lab_job = 'external admin'

        def studies = new Studies(title: 'ingenieria civil construccion', college: 'UTFSM',city:'valparaiso', country:'Chile', year:2012)

        def user = new User(username:'foo@bar.cl', password:'1234', name:'Anna Speranza Espinoza Tofalos')
        researcher.user = user
        researcher.addToStudies(studies)
        researcher.save(failOnError: true)

        UserRole.create user, adminRole, true

        assert User.count() == 1
        assert Role.count() == 3
        assert UserRole.count() == 1
        assert Researcher.count() == 1

    }
    def destroy = {
    }
}
