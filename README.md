# Testing FW/1 Load Listener Alias w/Subsystem

The app uses a load listener to add an alias for a service.

If the app is run with `reloadApplicationOnEveryRequest = true`, it's not possible to access the subsystem (index.cfm?action=module:main.default). Only the controller objects are found in `beanfactory.getbeaninfo()`, so it errors ("Element departmentService is undefined in a CFML structure referenced as part of an expression.").

If the `reloadApplicationOnEveryRequest` is set to false, you can access the subsystem, after the initial request.

You can work around this by explicity declaring the bean before creating the alias. In this case, `beanFactory.declareBean( "departmentService", "model.services.department" );`




