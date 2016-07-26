component extends="framework.one" output="false" {
	this.applicationTimeout = createTimeSpan(0, 2, 0, 0);
	this.setClientCookies = true;
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);

	// FW/1 settings
  // FW/1 settings
  variables.framework = {
    action = 'action',
    defaultSection = 'main',
    defaultItem = 'default',
    generateSES = false,
    SESOmitIndex = false,
    diEngine = "di1",
    reloadApplicationOnEveryRequest = true,
    //trace = true,
    diComponent = "framework.ioc",
    diLocations = "model, controllers",
        diConfig = {
          loadListener = "loadlistener"
          },
        routes = [ ]
  };

	public void function setupSession() { }

	public void function setupRequest() { }

	public void function setupView() { }

	public void function setupSubsystem() { }

	public void function setupResponse() { }

	public string function onMissingView(struct rc = {}) {
		return "Error 404 - Page not found.";
	}

  public void function onError( any exception, string event ) {
    writeDump(exception);
  }
}