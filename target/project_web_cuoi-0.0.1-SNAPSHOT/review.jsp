<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Noriva || Review</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
		  integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
		  crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="./style/review.css">
</head>

<body>
<div class='border__container'>
	<img class="mx-auto d-block" src="https://opencart.mahardhi.com/MT04/noriva/01/image/catalog/logo.png">
	<div>
		<h1>Please Review Before Paying</h1>
		<form action="execute_payment" method="post">
			<table>
				<tr>
					<td colspan="2"><b>Transaction Details:</b></td>
					<td>
						<input type="hidden" name="paymentId" value="${param.paymentId}" />
						<input type="hidden" name="PayerID" value="${param.PayerID}" />
					</td>
				</tr>
				<tr>
					<td>Description:</td>
					<td>${pay_descr}</td>
				</tr>
				<tr>
					<td>Subtotal:</td>
					<td>${total} USD</td>
				</tr>
				<tr>
					<td>Shipping:</td>
					<td>${ship} USD</td>
				</tr>
				<tr>
					<td>Tax:</td>
					<td>0 USD</td>
				</tr>
				<tr>
					<td>Total:</td>
					<td>${total + ship} USD</td>
				</tr>
				<tr>
					<td><br /></td>
				</tr>
				<tr>
					<td colspan="2"><b>Payer Information:</b></td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td>${user_logined.firstname}</td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td>${user_logined.lastname}</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>${user_logined.email}</td>
				</tr>
				<tr>
					<td><br /></td>
				</tr>
				<tr>
					<td colspan="2"><b>Shipping Address:</b></td>
				</tr>
				<tr>
					<td>Recipient Name:</td>
					<td>${user_logined.firstname} ${user_logined.lastname}</td>
				</tr>

				<tr>
					<td>State:</td>
					<td>${final_address}</td>
				</tr>
				<tr>
					<td>Country Code:</td>
					<td>Viet Nam</td>
				</tr>
				<tr>
					<td>Postal Code:</td>
					<td>700000</td>
				</tr>
			</table>
			<div class="btn__container">
				<input class="btn" type="submit" value="Pay Now" />
			</div>
		</form>
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