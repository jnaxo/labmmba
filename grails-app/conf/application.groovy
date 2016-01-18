
grails.plugin.springsecurity.successHandler.alwaysUseDefault = true
grails.plugin.springsecurity.auth.loginFormUrl = '/user/login'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/researcher/index'

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'labmmba.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'labmmba.UserRole'
grails.plugin.springsecurity.authority.className = 'labmmba.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	'/':                ['permitAll'],
	'/error':           ['permitAll'],
	'/index':           ['permitAll'],
	'/shutdown':        ['permitAll'],
	'/assets/**':       ['permitAll'],
	'/**/js/**':        ['permitAll'],
	'/**/css/**':       ['permitAll'],
	'/**/images/**':    ['permitAll'],
	'/**/favicon.ico':  ['permitAll'],
	'/user/login':		['permitAll']
]