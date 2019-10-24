component extends="models.service.BaseService" singleton {

  public BaseService function init(string value = ""){
    if(len(value) gt 0) 
      super.setPrivateVar(value) ;
    return this;
  }

  public string function getPrivateVar(){
    return variables.testing;
  }
}