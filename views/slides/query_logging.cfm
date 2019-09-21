<div class="accordion" id="accordion">
	<div class="card border-0 shadow mb-4">
		<a href="#collapse1" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse1" data-target="#collapse1">
			<h6 class="m-0 font-weight-bold text-primary">
				Simple Query SQL
			</h6>
		</a>
		<div class="collapse show" id="collapse1" data-parent="#accordion">
			<div class="card-body">
				<div class="col-12">
<pre syntax="sql">
	select
	this_.CarID as CarID2937_0_,
	this_.CreatedDate as Created17_2937_0_,
	this_.Description as Descript2_2937_0_,
	this_.`Year` as Year3_2937_0_,
	this_.ListPrice as ListPrice2937_0_,
	this_.SalePrice as SalePrice2937_0_,
	this_.AcquisitionDate as Acquisit6_2937_0_,
	this_.SaleDate as SaleDate2937_0_,
	this_.StockNumber as StockNum8_2937_0_,
	this_.Rating as Rating2937_0_,
	this_.VIN as VIN2937_0_,
	this_.Fuel as Fuel2937_0_,
	this_.Engine as Engine2937_0_,
	this_.Transmission as Transmi13_2937_0_,
	this_.Mileage as Mileage2937_0_,
	this_.IsSold as IsSold2937_0_,
	this_.Active as Active2937_0_,
	this_.MakeID as MakeID2937_0_,
	this_.ModelID as ModelID2937_0_,
	this_.CategoryID as CategoryID2937_0_,
	this_.ColorID as ColorID2937_0_
from
	Car this_
where
	this_.SaleDate between ? and ?
</pre>
				</div>
			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse2" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse2" data-target="#collapse2">
			<h6 class="m-0 font-weight-bold text-primary">
				Projection SQL
			</h6>
		</a>
		<div class="collapse" id="collapse2" data-parent="#accordion">
			<div class="card-body">
				<div class="col-12">
<pre syntax="sql">
	select
	avg(this_.SalePrice) as y0_
from
	Car this_
where
	this_.IsSold=?

...

select
	sum(this_.SalePrice) as y0_
from
	Car this_
where
	this_.IsSold=?

...

select
	this_.`Year` as y0_,
	this_.Description as y1_,
	this_.SaleDate as y2_,
	this_.AcquisitionDate as y3_,
	this_.SalePrice as y4_,
	this_.ListPrice as y5_
from
	Car this_
where
	this_.IsSold=?

...

select
	this_.`Year` as y0_,
	this_.Description as y1_,
	this_.SaleDate as y2_,
	this_.AcquisitionDate as y3_,
	this_.SalePrice as y4_,
	this_.ListPrice as y5_
from
	Car this_
where
	this_.IsSold=?
</pre>
				</div>

			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse3" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse3" data-target="#collapse3">
			<h6 class="m-0 font-weight-bold text-primary">
				Alias SQL
			</h6>
		</a>
		<div class="collapse" id="collapse3" data-parent="#accordion">
			<div class="card-body">
				<div class="col-12">
<pre syntax="sql">
	select
	this_.CarID as CarID2937_2_,
	this_.CreatedDate as Created17_2937_2_,
	this_.Description as Descript2_2937_2_,
	this_.`Year` as Year3_2937_2_,
	this_.ListPrice as ListPrice2937_2_,
	this_.SalePrice as SalePrice2937_2_,
	this_.AcquisitionDate as Acquisit6_2937_2_,
	this_.SaleDate as SaleDate2937_2_,
	this_.StockNumber as StockNum8_2937_2_,
	this_.Rating as Rating2937_2_,
	this_.VIN as VIN2937_2_,
	this_.Fuel as Fuel2937_2_,
	this_.Engine as Engine2937_2_,
	this_.Transmission as Transmi13_2937_2_,
	this_.Mileage as Mileage2937_2_,
	this_.IsSold as IsSold2937_2_,
	this_.Active as Active2937_2_,
	this_.MakeID as MakeID2937_2_,
	this_.ModelID as ModelID2937_2_,
	this_.CategoryID as CategoryID2937_2_,
	this_.ColorID as ColorID2937_2_,
	salespeopl4_.CarID as CarID2937_,
	staff1_.StaffID as StaffID,
	staff1_.StaffID as StaffID2944_0_,
	staff1_.CreatedDate as CreatedD2_2944_0_,
	staff1_.FirstName as FirstName2944_0_,
	staff1_.LastName as LastName2944_0_,
	staff1_.Username as Username2944_0_,
	staff1_.Password as Password2944_0_,
	staff1_.DOB as DOB2944_0_,
	staff1_.Address1 as Address8_2944_0_,
	staff1_.Address2 as Address9_2944_0_,
	staff1_.City as City2944_0_,
	staff1_.`State` as State11_2944_0_,
	staff1_.PostalCode as PostalCode2944_0_,
	staff1_.Phone as Phone2944_0_,
	staff1_.HireDate as HireDate2944_0_,
	staff1_.Active as Active2944_0_,
	staff1_.PositionID as PositionID2944_0_,
	(SELECT
		p.LongName
	FROM
		Position p
	WHERE
		p.PositionID = staff1_.PositionID) as formula735_0_,
	position2_.PositionID as PositionID2946_1_,
	position2_.CreatedDate as CreatedD2_2946_1_,
	position2_.LongName as LongName2946_1_,
	position2_.ShortName as ShortName2946_1_,
	position2_.Active as Active2946_1_
from
	Car this_
inner join
	CarStaff salespeopl4_
		on this_.CarID=salespeopl4_.CarID
inner join
	Staff staff1_
		on salespeopl4_.StaffID=staff1_.StaffID
inner join
	Position position2_
		on staff1_.PositionID=position2_.PositionID
where
	position2_.LongName=?
</pre>
				</div>

			</div>
		</div>
	</div>
	<div class="card border-0 shadow mb-4">
		<a href="#collapse4" class=" card-header border-0 py-3" data-toggle="collapse"
				role="button" aria-expanded="false" aria-controls="collapse4" data-target="#collapse4">
			<h6 class="m-0 font-weight-bold text-primary">
				Subquery SQL
			</h6>
		</a>
		<div class="collapse" id="collapse4" data-parent="#accordion">
			<div class="card-body">
				<div class="col-12">
<pre syntax="sql">
	select
	this_.CarID as CarID2937_0_,
	this_.CreatedDate as Created17_2937_0_,
	this_.Description as Descript2_2937_0_,
	this_.`Year` as Year3_2937_0_,
	this_.ListPrice as ListPrice2937_0_,
	this_.SalePrice as SalePrice2937_0_,
	this_.AcquisitionDate as Acquisit6_2937_0_,
	this_.SaleDate as SaleDate2937_0_,
	this_.StockNumber as StockNum8_2937_0_,
	this_.Rating as Rating2937_0_,
	this_.VIN as VIN2937_0_,
	this_.Fuel as Fuel2937_0_,
	this_.Engine as Engine2937_0_,
	this_.Transmission as Transmi13_2937_0_,
	this_.Mileage as Mileage2937_0_,
	this_.IsSold as IsSold2937_0_,
	this_.Active as Active2937_0_,
	this_.MakeID as MakeID2937_0_,
	this_.ModelID as ModelID2937_0_,
	this_.CategoryID as CategoryID2937_0_,
	this_.ColorID as ColorID2937_0_
from
	Car this_
where
	this_.CarID in (
		select
			carstaff_.CarID as y0_
		from
			Car carstaff_
		inner join
			CarStaff salespeopl4_
				on carstaff_.CarID=salespeopl4_.CarID
		inner join
			Staff staff1_
				on salespeopl4_.StaffID=staff1_.StaffID
		inner join
			Position position2_
				on staff1_.PositionID=position2_.PositionID
		where
			position2_.LongName=?
	)
</pre>
				</div>

			</div>
		</div>
	</div>
</div>