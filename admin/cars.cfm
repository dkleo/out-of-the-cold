
<cfset qryCars = request.wirebox.getInstance("CarService").getAllCars() />

<cfinclude template="/includes/cfml/header.cfm"/>
<cfoutput>
<!-- Area Chart -->
<div class="card border-0 shadow mb-4">
	<div class="card-header border-0 py-3 d-flex flex-row  justify-content-between">
		<h6 class="m-2 font-weight-bold text-primary">Cars</h6>
		<a href="edit.cfm" class="btn btn-sm btn-info">New Car</a>
		<a href="/logout.cfm" class="btn btn-sm btn-info">Logout</a>
		<!-- Card Header Dropdown -->
	</div>
	<div class="card-body">
		<div class="row mb-2">
			<div class="col-md-2 border-bottom">Car Make/Model</div>
			<div class="col-md-2 border-bottom">Year</div>
			<div class="col-md-2 border-bottom">Color</div>
			<div class="col-md-2 border-bottom text-right">Listing</div>
			<div class="col-md-2 border-bottom text-right">Sale</div>
			<div class="col-md-2 border-bottom"></div>
		</div>
		<cfloop query="#qryCars#">
			<div class="row mb-2">
				<div class="col-md-2"><a href="edit.cfm?carID=#qryCars.carID#">#encodeForHtml(qryCars.make)# #encodeForHtml(qryCars.model)#</a></div>
				<div class="col-md-2">#encodeForHtml(qryCars.year)#</div>
				<div class="col-md-2">#encodeForHtml(qryCars.color)#</div>
				<div class="col-md-2 text-right">$#encodeForHtml(qryCars.listPrice)#</div>
				<div class="col-md-2 text-success text-right"><strong>$#encodeForHtml(qryCars.salePrice)#</strong></div>
				<div class="col-md-2 text-right">
					<a href="edit.cfm?carID=#qryCars.carID#" class="btn btn-primary btn-sm">Edit</a>
					<a href="delete.cfm?carID=#qryCars.carID#" class="btn btn-danger btn-sm">Delete</a>
				</div>
			</div>
		</cfloop>
	</div>
</div>
</cfoutput>
<cfinclude template="/includes/cfml/footer.cfm"/>
