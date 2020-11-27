<!DOCTYPE html>
<html>
<head>
	<title> Shipping Board </title>

	<meta charset="UTF-8" />
	<meta 
		name="viewport" 
		content="width=device-width, initial-scale=1.0" />

	<link 
		rel="stylesheet" 
		type="text/css" 
		href="source/style.css" />

	<link 
		rel="stylesheet" 
		type="text/css" 
		href="source/style2.css" />
	
	<!--import bootstrap css -->
	<link 
		rel="stylesheet" 
		type="text/css" 
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		crossorigin="anonymous" />
	
	<!--import datatables with file export css -->
	<link 
		rel="stylesheet" 
		type="text/css" 
		href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>
	
	<link 
		rel="stylesheet"
		type="text/css"
		href="https://nightly.datatables.net/css/jquery.dataTables.css"/>
	
</head>
	

<body>	
	<img src="source/logo.png" alt="PHX Logo" width="20%" style="float:right">

	<div id="date-container">
		<h1>Shipping Board</h1>
		
		<!-- display date & time -->
		<div id="date">
		</div>
	</div>

	<table id="table_fixed">
		<thead>
			<tr>
				<th>Order Number</th>
				<th>Customer</th>
				<th>Carrier</th>
				<th>Ship To</th>
				<th>Status</th>
				<th>Appointment Time</th>
				<th>Truckloads / LTL</th>
			</tr>
		</thead>
	</table>
		
	<div id="contain">
		<table 
			id="table_scroll" 
			class="table table-striped table-fixed table-responsive" 
			cellspacing="0">
		
			<tbody>
				<?php
					$conn = new mysqli('localhost', 'root', '', 'phx');
					
					$sql = $conn->query('SELECT * FROM shipping WHERE IsDeleted = 0 ORDER BY customer ASC');
					while($data = $sql->fetch_array()){
						echo '
							<tr>
								<td>'.$data['id'].'</td>
								<td>'.$data['order_num'].'</td>
								<td>'.$data['customer'].'</td>
								<td>'.$data['carrier'].'</td>
								<td>'.$data['city'].'</td>
								<td>'.$data['status'].'</td>
								<td>'.$data['ship_time'].'</td>
								<td>'.$data['truckloads'].'</td>
								<td>'.$data['plt_qty'].'</td>
							</tr>
						';
					}
				?>

			</tbody>
		</table>
	</div>

	<!-- import latest jquery -->
	<script
		src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	
	<script 
		type="text/javascript" 
		src="//code.jquery.com/jquery-1.11.3.min.js"></script>

	<!-- import customize datatables -->
	<script 
		type="text/javascript" 
		src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

	<script 
		type="text/javascript" 
		src="https://nightly.datatables.net/js/jquery.dataTables.js"></script>
	
	<!-- my script -->
	<script 
		type="text/javascript" 
		src="./myscroll.js"></script>

</body>
</html>
