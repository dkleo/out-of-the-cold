// BaseService.cfc
component extends="models.service.Base" singleton {
  this.testing = "brown";
  variables.testing = "blue";

  public string function getPublicVar(){
    return this.testing;
  }

  public string function getPrivateVar(){
    variables.testing = "Based";
    return variables.testing;
  }

  public void function setPublicVar(required string value) {
    this.testing = value;
  }

  public void function setPrivateVar(required string value) {
    variables.testing = value;
  }
}

