<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>My Policy</title>	
	<link rel="stylesheet" href="/css/bootstrap.min.css">	
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Patua+One">-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<style>
		body {
		    color: #333;
		    background: #fafafa;
		    font-family: 'Varela Round', sans-serif;
		    /*font-family: "Patua One", sans-serif;*/
		}
		.contact-form {
		    padding: 50px;
		    /*margin: 30px 0;*/
		}
		.contact-form h1 {
		    color: #19bc9d;
		    font-weight: bold;
		    margin: 0 0 15px;
		}
		.contact-form .form-control, .contact-form .btn {
		    min-height: 38px;
		    border-radius: 2px;
		}
		.contact-form .form-control:focus {
		    border-color: #19bc9d;
		}
		.contact-form .btn-primary, .contact-form .btn-primary:active {
		    color: #fff;
		    min-width: 150px;
		    font-size: 16px;
		    background: #19bc9d !important;
		    border: none;
		}
		.contact-form .btn-primary:hover {
		    background: #15a487 !important; 
		}
		.contact-form .btn i {
		    margin-right: 5px;
		}
		.contact-form label {
		    opacity: 0.7;
		}
		.contact-form textarea {
		    resize: vertical;
		}
		.hint-text {
		    font-size: 15px;
		    padding-bottom: 20px;
		    opacity: 0.6;
		}
		.modal-confirm {		
			color: #434e65;
			width: 525px;
		}
		.modal-confirm .modal-content {
			padding: 20px;
			font-size: 16px;
			border-radius: 5px;
			border: none;
		}
		.modal-confirm .modal-header {
			background: #47c9a2;
			border-bottom: none;   
			position: relative;
			text-align: center;
			margin: -20px -20px 0;
			border-radius: 5px 5px 0 0;
			padding: 35px;
		}
		.modal-confirm h4 {
			text-align: center;
			font-size: 36px;
			margin: 10px 0;
		}
		.modal-confirm .form-control, .modal-confirm .btn {
			min-height: 40px;
			border-radius: 3px; 
		}
		.modal-confirm .close {
			position: absolute;
			top: 15px;
			right: 15px;
			color: #fff;
			text-shadow: none;
			opacity: 0.5;
		}
		.modal-confirm .close:hover {
			opacity: 0.8;
		}
		.modal-confirm .icon-box {
			color: #fff;		
			width: 95px;
			height: 95px;
			display: inline-block;
			border-radius: 50%;
			z-index: 9;
			border: 5px solid #fff;
			padding: 15px;
			text-align: center;
		}
		.modal-confirm .icon-box i {
			font-size: 64px;
			margin: -4px 0 0 -4px;
		}
		.modal-confirm.modal-dialog {
			margin-top: 80px;
		}
		.modal-confirm .btn, .modal-confirm .btn:active {
			color: #fff;
			border-radius: 4px;
			background: #eeb711 !important;
			text-decoration: none;
			transition: all 0.4s;
			line-height: normal;
			border-radius: 30px;
			margin-top: 10px;
			padding: 6px 20px;
			border: none;
		}
		.modal-confirm .btn:hover, .modal-confirm .btn:focus {
			background: #eda645 !important;
			outline: none;
		}
		.modal-confirm .btn span {
			margin: 1px 3px 0;
			float: left;
		}
		.modal-confirm .btn i {
			margin-left: 1px;
			font-size: 20px;
			float: right;
		}
		.trigger-btn {
			display: inline-block;
			margin: 100px auto;
		}
	</style>
</head>
<body>
	<div class="container-lg">
	    <div class="row">
	        <div class="col-md-10 mx-auto">
	            <div class="contact-form">
	                <h1>Add New Policy</h1>
	                <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="category">Policy Category</label>
                                <select class="form-select form-control" id="category" required>
						  			<option selected>- Select a Category -</option>
						  			<option value="Car">Car</option>
						  			<option value="Medical">Medical</option>
						  			<option value="Life">Life</option>
						  			<option value="Personal Accident">Personal Accident</option>
								</select>
                            </div>
                        </div>                
                        <div class="col-sm-6">
                        	<label for="category">Type of Policy</label>
                            <div class="form-group">
                                <div class="form-check">
							  		<input class="form-check-input" type="radio" name="type" id="typeInsurance" value="Insurance">
							  		<label class="form-check-label" for="typeInsurance">Insurance</label>
								</div>
								<div class="form-check">
							  		<input class="form-check-input" type="radio" name="type" id="typeTakaful" value="Takaful">
							  		<label class="form-check-label" for="typeTakaful">Takaful</label>
								</div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name">Policy Holder Name</label>
                        <input type="text" class="form-control" id="name" required>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="ICNo">IC Number</label>
                                <input type="text" class="form-control" id="ICNo" required>
                            </div>
                        </div>                
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" class="form-control" id="email" required>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="mobileNo">Mobile Number</label>
                                <input type="text" class="form-control" id="mobileNo" required>
                            </div>
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="address">Address</label>
                        <textarea class="form-control" id="address" rows="3" required></textarea>
                    </div>
                    <button type="button" class="btn btn-secondary" onclick="window.location.href='../mypolicy/';">Cancel</button>&nbsp;
                    <button type="button" class="btn btn-primary" onclick="addPolicy();">Save</button>                    
	            </div>
	        </div>
	    </div>
	</div>
	
	<!-- Success Modal -->
	<div id="modalSuccess" class="modal fade">
		<div class="modal-dialog modal-confirm">
			<div class="modal-content">
				<div class="modal-header justify-content-center">
					<div class="icon-box"><i class="material-icons">&#xE876;</i></div>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body text-center">
					<h4>Success!</h4>	
					<p>Your policy has been created successfully.</p>
					<button class="btn btn-success" data-dismiss="modal" onclick="window.location.href = '../mypolicy/';"><span>OK</span> <i class="material-icons">&#xE5C8;</i></button>
				</div>
			</div>
		</div>
	</div> 

<script type="text/javascript" src="/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/js/popper.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
<script type="text/javascript">

	function addPolicy() 
	{
		var category = $('#category').val();
		var type = $('input[name="type"]:checked').val();		
		var name = $("#name").val();
		var ICNo = $("#ICNo").val();
		var mobileNo = $("#mobileNo").val();
		var email = $("#email").val();
		var address = $("#address").val();
				
		$.ajax({
			type: 'POST',
			url: '../../api/policy/',
			data: {
				category: category,
				type: type,
				name: name,
				ICNo: ICNo,
				mobileNo: mobileNo,
				email: email,
				address: address
			},
			success: function(data) {
				$('#modalSuccess').modal('show');
			},
			error: function(jqXHR, textStatus, errorThrown) {
				console.log('jqXHR: ' + JSON.stringify(jqXHR));
  		        console.log('textStatus: ' + textStatus);
  		        console.log('errorThrown: ' + errorThrown);
			}
		});
	}
</script>
</body>
</html>
