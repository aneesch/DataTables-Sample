<!DOCTYPE html> 
<html>
	<head>
		<!-- DataTables CSS -->
		<link rel="stylesheet" type="text/css" href="DataTables-1.10.2/media/css/jquery.dataTables.css">	
		<link rel="stylesheet" type="text/css" href="DataTables-1.10.2/media/css/jquery.dataTables_themeroller.css">  
		<style>
			.dataTableContainer{
				width 		: 800px;
				padding		: 5px;
				border		: 1px dotted black; 
			}
		</style>
	</head>
	
	<body>	
		
		<div class="dataTableContainer">
			<table id="companyTable" class="display">
			    <thead>
			        <tr>
			            <th>Sl No.</th>
			            <th>Name</th>
			             <th>Phone</th>
			        </tr>
			    </thead>
			</table>
		</div>
		
	</body>
	
	<!-- jQuery -->
	<script type="text/javascript" charset="utf8" src="DataTables-1.10.2/media/js/jquery.js"></script>	  
	<!-- DataTables -->
	<script type="text/javascript" charset="utf8" src="DataTables-1.10.2/media/js/jquery.dataTables.js"></script>
	
	<script type="text/javascript">
			
		$(document).ready(function(){			
			
			var columns = [
		        { data: 'Sl' },
		        { data: 'Name' },
		        { data: 'Phone' }
		    ];
			
			$('#companyTable').dataTable( {
				"columns"			:columns,				
   				"sAjaxSource"		: 'getData.cfm',
   				"iDisplayLength" 	: 5,
				"aLengthMenu"		: [[10, 25, 50, -1], [10, 25, 50, "All"]],					
				"bLengthChange"		: true,
				//"aaSorting"			: [[ 1, "asc" ]],
				//"aoColumnDefs"		: [  { "bVisible": false, "aTargets": [ 2 ] } ],
                //"sPaginationType"	: "full_numbers",
                //"bJQueryUI"			: true,
			}); 
		});			
		
	</script>

</html>