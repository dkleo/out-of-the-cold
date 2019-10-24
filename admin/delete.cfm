<<<<<<< Updated upstream
<cfinclude template="/authenticate.cfm"/>
=======
<!--- <cfinclude template="/authenticate.cfm"/> --->
>>>>>>> Stashed changes

<cfscript>
	transaction {
		queryService = new Query();
		queryService.setDatasource('cartracker');
		queryService.addParam(name="carID", value="#url.carID#");

		// delete images
		queryService.setSQL("DELETE FROM Image WHERE carID = :carID");
		queryService.execute();

		// delete the car
		queryService.setSQL("DELETE FROM Car WHERE carID = :carID");
		queryService.execute();
	}
</cfscript>

<<<<<<< Updated upstream
<cflocation url="/admin/cars.cfm?alert=Car deleted successfully&alertType=success"/>
=======
<cflocation url="/admin/cars.cfm?alert=Car deleted successfully&alertType=success" addtoken="false" />
>>>>>>> Stashed changes
