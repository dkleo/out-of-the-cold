<cfparam name="url.alert" default=""/>
<cfparam name="url.alertType" default=""/>
<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="ColdBox cborm module">
	<meta name="author" content="Ortus Solutions, Corp">
	<title>Comming Out of the Cold</title>

	<!-- Bootstrap + Fontawesome-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">

	<!-- Custom styles for this template-->
	<link href="/includes/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="/includes/css/Unicorns.css" rel="stylesheet">

</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<nav style="overflow-y: auto;height: 100%;padding-bottom: 49px;">
			<ul class="navbar-nav nav-menu-fixed bg-gradient-coldbox sidebar accordion" id="accordionSidebar" >
				<li class="nav-item">
					<a class="nav-link" href="/index.cfm">
						<span>Storefront</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#event.buildLink( 'manager.index ')#">
						<span>Manager</span>
					</a>
				</li>


				<!-- Divider -->
				<hr class="sidebar-divider d-none d-md-block">
			</ul>
			<!-- End of Sidebar -->
		</nav>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav class="navbar navbar-expand navbar-light bg-coldbox topbar mb-4 static-top shadow navbar-fixed" >
					<a class="sidebar-brand d-flex align-items-center justify-content-center my-2" href="">
						<div class="sidebar-brand-text mx-3">
							<img src="/includes/images/logo-coldbox.png" style="width:241px;">
						</div>
					</a>
				</nav>
				<!-- End of Topbar -->

				<div class="container-fluid container-fixed" id="containerView">
					<div id="top-container"></div>
					<cfif len(url.alert)>
						<div class="alert alert-#url.alertType#">#url.alert#</div>
					</cfif>
</cfoutput>
