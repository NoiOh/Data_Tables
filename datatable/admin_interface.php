<!DOCTYPE html>
<html>
<head>
	<title> Shipping Board </title>
	<meta charset="UTF-8"/>

	<meta 
		name="viewport" 
		content="width=device-width, initial-scale=1.0"/>

	<!--import bootstrap css -->
	<link 
		rel="stylesheet" 
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
		integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
		crossorigin="anonymous"/>
	
	<!--import datatables with file export css -->
	<link 
		rel="stylesheet" 
		href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>

	<link 
		rel="stylesheet" 
		href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css"/>
</head>

<body>
	<img src="source/logo.png" alt="PHX Logo" width="20%" style="float:right"/>

	<div width="100%" id="header">
		<br>
		<h1>Shipping Board</h1>
		
		<!-- display date & time -->
		<div id="date">
		</div>
	</div><br>

	<div class="container-fluid">
	
		<div id="tableManager" class="modal fade table-responsive">
			<div class="modal-dialog">
				<div class="modal-content">
				
					<div class="modal-header">
						<h2 class="modal-title">New Order</h2>
					</div>
					
					<div class="modal-body">
					
						<div id="editContent">
							<input type="text" class="form-control" placeholder="Order Number" id="order_num"><br>
							<input type="text" class="form-control" placeholder="Customer" id="customer"><br>
							<input type="text" class="form-control" placeholder="Carrier" id="carrier"><br>
							<input type="text" class="form-control" placeholder="City" id="city"><br>
							<input type="text" class="form-control" placeholder="Status" id="status"><br>
							<input type="text" class="form-control" placeholder="Appointment Time" id="ship_time"><br>
							<input type="text" class="form-control" placeholder="Truck / LTL" id="truckloads"><br>
							<input type="text" class="form-control" placeholder="Plt Qty" id="plt_qty"><br>
							<input type="hidden" id="editRowID" value="0">
						</div>
					
						<div id="showContent" style="display:none;">
							<h3> Truck / LTL </h3>
							<div id="showTruck"></div>
							<hr>
							<h3> Plt Qty </h3>
							<div id="showPlt"></div>
						</div>
						
					</div>
					
					<div class="modal-footer">
						<input type="button" id="closeBtn" class="btn btn-primary" value="Close" data-dismiss="modal">
						<input type="button" id="manageBtn" class="btn btn-success" value="Save" onclick="manageData('addNew')">
					</div>
					
				</div>
			</div>
		</div>
					
					
		<div class="row">
			<div class="col-auto">
			
				<input style="float: right" type="button" class="btn btn-success" id="addNew" value="Add New">
				<br><br>
				<table class="table table-striped table-bordered table-hover table-responsive">
					<thead>
						<tr>
							<td>ID</td>
							<td>Sales Order</td>
							<td>Customer</td>
							<td>Carrier</td>
							<td>Ship To</td>
							<td>Status</td>
							<td>Appointment Time</td>
							<td>Truck / LTL</td>
							<td>Plt Qty</td>
							<td>Options </td>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
		

	<!-- import jquery (needs to be right before bootstrap) -->
	<script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" 
		crossorigin="anonymous"></script>

	<!--import bootstrap js -->
	<script 
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" 
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" 
		crossorigin="anonymous"></script>
	
	<!--import file export js -->
	<script 
		type="text/javascript" 
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

	<script 
		type="text/javascript" 
		src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>

	<script 
		type="text/javascript" 
		src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
	
	<script 
		type="text/javascript" 
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	
	<script 
		type="text/javascript" 
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>

	<script 
		type="text/javascript" 
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>

	<script 
		type="text/javascript" 
		src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>

	<script 
		type="text/javascript" 
		src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>

	<script
		type="text/javascript" 
		src="process.js"></script>

</body>
</html>