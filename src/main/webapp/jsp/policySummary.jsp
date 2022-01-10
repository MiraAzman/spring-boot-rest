<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>My Policy</title>	
	<link rel="stylesheet" href="/css/bootstrap.min.css">	
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<style>
		body {
		    color: #566787;
		    background: #f5f5f5;
		    font-family: 'Roboto', sans-serif;
		}
		.table-responsive {
		    margin: 30px 0;
		}
		.table-wrapper {
		    width: 850px;
		    background: #fff;
			margin: 0 auto;
		    padding: 20px 30px 5px;
		    box-shadow: 0 0 1px 0 rgba(0,0,0,.25);
		}
		.table-title .btn-group {
		    float: right;
		}
		.table-title .btn {
		    min-width: 50px;
		    border-radius: 2px;
		    border: none;
		    padding: 6px 12px;
		    font-size: 95%;
		    outline: none !important;
		    height: 30px;
		}
		.table-title {
		    min-width: 100%;
		    border-bottom: 1px solid #e9e9e9;
		    padding-bottom: 15px;
		    margin-bottom: 5px;
		    background: rgb(0, 50, 74);
		    margin: -20px -31px 10px;
		    padding: 15px 30px;
		    color: #fff;
		}
		.table-title h2 {
		    margin: 2px 0 0;
		    font-size: 24px;
		}
		table.table {
		    min-width: 100%;
		}
		table.table tr th, table.table tr td {
		    border-color: #e9e9e9;
		    padding: 12px 15px;
		    vertical-align: middle;
		}
		table.table tr th:first-child {
		    width: 40px;
		}
		table.table tr th:last-child {
		    width: 100px;
		}
		table.table-striped tbody tr:nth-of-type(odd) {
		    background-color: #fcfcfc;
		}
		table.table-striped.table-hover tbody tr:hover {
		    background: #f5f5f5;
		}
		table.table td a {
		    color: #2196f3;
		}
		table.table td .btn.manage {
		    padding: 2px 10px;
		    background: #37BC9B;
		    color: #fff;
		    border-radius: 2px;
		}
		table.table td .btn.manage:hover {
		    background: #2e9c81;		
		}
	</style>
</head>
<body>
	<div class="container-xl">
	    <div class="table-responsive">
	        <div class="table-wrapper">
	            <div class="table-title">
	                <div class="row">
	                    <div class="col-sm-6"><h2>Policy Summary</h2></div>
	                    <div class="col-sm-6">
	                        <div class="btn-group" data-toggle="buttons">
	                            <label class="btn btn-warning" onclick="window.location.href='newPolicy';">Add New Policy</label>						
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <table class="table table-striped table-hover">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Category</th>
	                        <th>Type</th>
	                        <th>Status</th>
	                        <th>Policy&nbsp;Owner</th>
	                        <th>Action</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	<c:forEach var="policy" items="${listPolicy}" varStatus="PolicyList">
		                    <tr>
		                        <td>${PolicyList.count}</td>
		                        <td>${policy.category}</td>
		                        <td>${policy.type}</td>
		                        <td>${policy.status}</td>
		                        <td>${policy.policyOwner}</td>
		                        <td><a href="#" class="btn btn-sm manage" onclick="viewPolicyDetails(${policy.id});">View Details</a></td>
		                    </tr>
	                    </c:forEach>
	                </tbody>
	            </table>
	        </div> 
	    </div>   
	</div>                                		

<script type="text/javascript" src="/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/js/popper.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
<script type="text/javascript">
	function viewPolicyDetails(id) {	
		window.location.href = "policy/" + id;
		
	}
	
	$(document).ready(function(){
		$(".btn-group .btn").click(function(){
			var inputValue = $(this).find("input").val();
			if(inputValue != 'all'){
				var target = $('table tr[data-status="' + inputValue + '"]');
				$("table tbody tr").not(target).hide();
				target.fadeIn();
			} else {
				$("table tbody tr").fadeIn();
			}
		});
		// Changing the class of status label to support Bootstrap 4
	    var bs = $.fn.tooltip.Constructor.VERSION;
	    var str = bs.split(".");
	    if(str[0] == 4){
	        $(".label").each(function(){
	        	var classStr = $(this).attr("class");
	            var newClassStr = classStr.replace(/label/g, "badge");
	            $(this).removeAttr("class").addClass(newClassStr);
	        });
	    }
	});
</script>
</html>
