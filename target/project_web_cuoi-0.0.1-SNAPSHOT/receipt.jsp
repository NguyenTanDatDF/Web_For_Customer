<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Noriva || Bill</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
		  integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
		  crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="./style/receipt.css">
</head>
<body>
<div class='border__container'>
	<img class="mx-auto d-block" src="https://opencart.mahardhi.com/MT04/noriva/01/image/catalog/logo.png">
	<div>
		<h1>Payment Done. Thank you for purchasing our products</h1>
		<h2>Receipt Details:</h2>
		<div class="information">
			<div class="info__item">
				<div class="col1"><b>Merchant:</b></div>
				<div class="col2">Company Noriva Ltd.</div>
			</div>
			<div class="info__item">
				<div class="col1"><b>Payer:</b></div>
				<div class="col2">${payer.firstName} ${payer.lastName}</div>
			</div>
			<div class="info__item">
				<div class="col1"><b>Description:</b></div>
				<div class="col2">${transaction.description}</div>
			</div>
			<div class="info__item">
				<div class="col1"><b>Subtotal:</b></div>
				<div class="col2">${transaction.amount.details.subtotal} USD</div>
			</div>
			<div class="info__item">
				<div class="col1"><b>Shipping:</b></div>
				<div class="col2">${transaction.amount.details.shipping} USD</div>
			</div>
			<div class="info__item">
				<div class="col1"><b>Tax:</b></div>
				<div class="col2">${transaction.amount.details.tax} USD</div>
			</div>
			<div class="info__item">
				<div class="col1"><b>Total:</b></div>
				<div class="col2">${transaction.amount.total} USD</div>
			</div>
		</div>
	</div>
	<div style="margin-bottom: 20px;">
	</div>
	<div class="btn__container">
		<div class="bton">
			<a href="#" class="btn" type="button">Continue Shopping</a>
		</div>
	</div>
</div>
</body>
<script src="https://kit.fontawesome.com/e82e1ec9a6.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</html>