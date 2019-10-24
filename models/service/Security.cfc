//Security.cfc
component extends="models.service.BaseService" singleton {

  public Security function init() {
    return this;
  }

  public void function checkAuthentication() {
    // if we are on the login page, or in the /admin directory do not proceed.
    if( (cgi.script_name == "login.cfm"
        || !findNoCase('/admin', cgi.script_name)
        || cgi.script_name == "test.cfm" )
        && !structKeyExists(form, 'username') ) {
      return ;
    }
    // if we aren't authenticated but we are trying to authenticate
    if( !session.authenticated && !structKeyExists(form, 'username') && !structKeyExists(form, 'password') ){
      location( url="/login.cfm?redirectURL=#cgi.script_name#" );
    } else if ( structKeyExists(form, 'username') && len(form.username) && structKeyExists(form, 'password') && len(form.password) ){

        session.authenticated = true;

      // if we have a place to redirect to
      if( structKeyExists(form, 'redirectURL') && len(form.redirectURL) ){
        location( url="#form.redirectURL#");
      }
    } else if( structKeyExists(form, 'username') && !len(form.username) && structKeyExists(form, 'password') && !len(form.password) >= 3 ){
      location( url="/login.cfm?redirectURL=#cgi.script_name#" );
    }
  }

}