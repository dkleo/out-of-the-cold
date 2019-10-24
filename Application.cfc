/**
********************************************************************************
Copyright 2005-2007 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldboxframework.com | www.luismajano.com | www.ortussolutions.com
********************************************************************************
*/
component {

	// Application properties
	this.name = "Coming out of the Cold";
	this.sessionManagement = true;
	this.sessionTimeout = createTimespan( 0, 0, 30, 0 );
	this.setClientCookies = true;
	this.datasource="cartracker";


	// application start
	public boolean function onApplicationStart(){
		// add services into application scope for easy reuse
		application.dsn = 'cartracker';
		this.wirebox = new wirebox.system.ioc.Injector('config.Wirebox');
		return true;
	}

	// request start
public boolean function onRequestStart( String targetPage ){
		if( structKeyExists(url, "init") and url.init){
			onApplicationStart();
		}

	// put wirebox into request scope so our scripts can utilize it easily
	request.wirebox = application.wirebox;
	// check the user
	request.wirebox.getInstance('Security').checkAuthentication();
	return true;

	}


	public void function onApplicationEnd( struct appScope ){
	}

public void function onSessionStart(){
      param name="session.authenticated" default="false";

	if( !structKeyExists(session, 'csrfToken') ){
			session.csrfToken = createUUID(); // create a unique token for this user
	}
}


	public void function onSessionEnd( struct sessionScope, struct appScope ){
	}

	public boolean function onMissingTemplate( template ){
		return true;
	}

}
