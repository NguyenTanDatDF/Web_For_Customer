<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style/checkout.css">
</head>
<body>
<form action="authorize_payment" method="post">
    <div class='border__container'>
        <img class="mx-auto d-block" src="https://opencart.mahardhi.com/MT04/noriva/01/image/catalog/logo.png">
        <div style="margin-bottom: 50px;">
            <table class="table table-bordered">
                <h1>Please Review Before Paying</h1>
                <thead>
                <tr>
                    <td class="table-dark">Product/Service</td>
                    <td class="table-dark">Sub Total</td>
                    <td class="table-dark">Shipping</td>
                    <td class="table-dark">Total Amount</td>
                    <td class="table-dark">Total</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="text" name="product" value="${pay_descr}"/></td>
                    <td><input type="text" name="subtotal" value="${total}"/></td>
                    <td><input type="text" name="shipping" value="${ship}"/></td>
                    <td><input type="text" name="tax" value="0"/></td>
                    <td><input type="text" name="total" value="${total+ship}"/></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="btn__container">
            <div class="bton">
                <input class="btn" type="submit" value="Checkout"/>
            </div>
            <div class="bton">
                <a href="ProductPageForward" class="btn" type="button">Cancel</a>
            </div>
        </div>
    </div>
</form>
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