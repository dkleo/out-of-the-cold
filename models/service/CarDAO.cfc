//CarDaO.cfc
component extends = "models.service.BaseDAO" {

  public CarDAO function init() {
    return this;
  }

  public query function listCarByID(required string carID) {
    return new Query(
      sql = "SELECT
      c.*
      ,ma.longName as make
      ,mo.longName as model
      ,co.longName as color
      FROM Car c
      JOIN Make ma ON c.makeID = ma.makeID
      JOIN Model mo ON c.modelID = mo.modelID
      JOIN Color co ON c.colorID = co.colorID
      WHERE carID = :carID"
      ,parameters = [
        {name="carID", value="#arguments.carID#"}
      ]
      )
    .execute()
    .getResult();
  }
  public query function listAllCars() {
    return new Query(sql="SELECT c.*
        ,ma.longName as make
        ,mo.longName as model
        ,co.longName as color
        FROM Car c
        INNER JOIN Make ma ON c.makeID = ma.makeID
        INNER JOIN Model mo ON c.modelID = mo.modelID
        INNER JOIN Color co ON c.colorID = co.colorID
        ORDER BY c.saleprice")
    .execute()
    .getResult();
  }

  public query function listImagesForCar(required string carID) {
    return new Query(
      sql = "SELECT *  FROM Image WHERE carID = :carID"
      ,parameters = [
        {name="carID", value="#arguments.carID#", cfsqltype="cf_sql_varchar"}
      ])
      .execute()
      .getResult();
  }


}