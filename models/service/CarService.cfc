//CarService.cfc
component extends = "models.service.BaseService" {

  public CarService function init() {
    return this;
  }

  public query function getCar(required string carID) {
    return createObject("component", "models.service.CarDAO").listCarByID(carID = arguments.carID);
  }
  public query function getAllCars() {
    return createObject("component", "models.service.CarDAO").listAllCars();
  }
  public query function getImages(required string carID) {
    return createObject("component", "models.service.CarDAO").listImagesForCar(carID = arguments.carID);
  }
}