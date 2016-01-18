import labmmba.Researcher
import labmmba.Studies
import labmmba.Role
import labmmba.User
import labmmba.UserRole
import labmmba.Research_area

class BootStrap {


    def init = {

        /* ResearchAreas */
        def research_areas = (String[])["Biotecnología vegetal", "Compuestos bioactivos", "Microbiología", "Biotecnología Ambiental"]

        research_areas.each{ ra_name ->
            new Research_area(name: ra_name).save()
        }

        /* Roles */
        def adminRole = new Role('ROLE_ADMIN').save()
        def directorRole = new Role('ROLE_DIRECTOR').save()
        def userRole = new Role('ROLE_USER').save()
        def advisorRole = new Role('ROLE_ADVISOR').save()
        def anonymously = new Role('IS_AUTHENTICATED_ANONYMOUSLY').save()

        /* researcher accotunt*/
        def researcher = new Researcher()
        researcher.lab_job = 'student'
        researcher.research_area = Research_area.get(1)

        def studies = new Studies(title: 'ingenieria civil construccion', college: 'UTFSM',city:'valparaiso', country:'Chile', year:2012)

        def r_user = new User(username:'foo@bar.cl', password:'1234', name:'Anna Speranza Espinoza Tofalos')
        researcher.user = r_user
        researcher.addToStudies(studies)
        researcher.save(failOnError: true)

        /* admin account */
        def admin = new Researcher(lab_job: 'admin')
        def a_user = new User(username:'admin@bar.cl', password:'1234', name:'nacho fuentes')
        admin.user = a_user
        admin.save(failOnError: true)

        UserRole.create r_user, userRole, true
        UserRole.create a_user, adminRole, true

        assert User.count() == 2
        assert Role.count() == 5
        assert UserRole.count() == 2
        assert Researcher.count() == 2

    }
    def destroy = {
    }
}
