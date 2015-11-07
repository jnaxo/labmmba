import labmmba.Researcher
import labmmba.Role
import labmmba.User
import labmmba.UserRole


class BootStrap {


    def init = {

        def adminRole = new Role('ROLE_ADMIN').save()
        def userRole = new Role('ROLE_USER').save()
        def anonymously = new Role('IS_AUTHENTICATED_ANONYMOUSLY').save()

        def testUser = new User(username:'foo@bar.cl', password:'1234', researcher:new Researcher(lab_job:'director')).save()

        UserRole.create testUser, adminRole, true

        assert User.count() == 1
        assert Role.count() == 3
        assert UserRole.count() == 1
    }
    def destroy = {
    }
}
