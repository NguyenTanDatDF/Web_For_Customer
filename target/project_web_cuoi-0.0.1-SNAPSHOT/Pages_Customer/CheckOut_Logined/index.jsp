<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <title>Noriva || Checkout</title>
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="./Components_Customer/Header/Header.css">
    <link rel="stylesheet" href="./Components_Customer/Footer/Footer.css">
    <link rel="stylesheet" href="./Pages_Customer/CheckOut/style.css">
</head>

<body>
<div id="header"></div>
<div class="accordion" id="accordionItems">
    <h3>CHECKOUT</h3>
    <form action="Test">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseTwo"
                        aria-expanded="false" aria-controls="collapseTwo">
                    ACCOUNT & BILLING DETAILS
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                 data-bs-parent="#accordionItems">
                <div class="accordion-body">
                    <div class="accordion-body">
                        <div class="option__container">
                            <div class="option__1">
                                <legend>Your Personal Details</legend>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>First Name</label>
                                    <input name="fname" type="text" class="form-control" value="${customer.firstname}"
                                           required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>Last Name</label>
                                    <input name="lname" type="text" class="form-control" value="${customer.lastname}"
                                           required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>Phone Number</label>
                                    <input name="phone" type="number" class="form-control" value="${customer.phone}"
                                           required>
                                </div>
                            </div>
                            <div class="option__2">
                                <legend>Your Address</legend>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>Address</label>
                                    <input name="address" type="text" class="form-control"
                                           placeholder="Enter your Address here!" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>Road</label>
                                    <input name="road" type="text" class="form-control"
                                           placeholder="Enter your Road Name here!" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>Ward</label>
                                    <input name="ward" type="text" class="form-control"
                                           placeholder="Enter your Ward here!" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>District</label>
                                    <input name="district" type="text" class="form-control"
                                           placeholder="Enter your District here!" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>City</label>
                                    <input name="city" type="text" class="form-control"
                                           placeholder="Enter your City here!" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label"><span>*</span>Country</label>
                                    <input name="country" type="text" class="form-control" value="Viet Nam" required>
                                </div>
                                <div class="mb-3">
                                    <a style="float: right; margin-top: 15px;" type="button"
                                       class="login__btn" data-bs-toggle="collapse"
                                       data-bs-target="#collapseFive" aria-expanded="false"
                                       aria-controls="collapseThree">CONTINUE</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingFive">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                    PAYMENT METHOD
                </button>
            </h2>
            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive"
                 data-bs-parent="#accordionItems">
                <div class="accordion-body">
                    <p>Please select the preferred payment method to use on this order.</p>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="COD" name="payment_type">
                        <label class="form-check-label">
                            COD - Cash On Delivery
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="paypal" name="payment_type">
                        <label class="form-check-label">
                            Using PayPal
                        </label>
                    </div>
                    <div class="form-check mb-3">
                        <a style="float: right;" type="button" class="login__btn" data-bs-toggle="collapse"
                           data-bs-target="#collapseSix"
                           aria-expanded="false" aria-controls="collapseThree">CONTINUE</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingSix">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseSix"
                        aria-expanded="false" aria-controls="collapseThree">
                    CONFIRM ORDER
                </button>
            </h2>
            <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix"
                 data-bs-parent="#accordionItems">
                <div class="accordion-body">
                    <div style="overflow-x: auto">
                        <table class="table table-bordered">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Product Name</th>
                                <th scope="col">Brand</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Unit Price</th>
                                <th scope="col">Total Price</th>
                            </tr>
                            </thead>
                            <c:forEach var="item" items="${listProduct}">
                            <tbody>
                            <tr>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p>${item.name}</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p>${item.brand_code}</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p>${item.quatity}</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p>${item.price}$</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p>${item.quatity*item.price}$</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>

                                </c:forEach>

                                <td colspan="4">
                                    <div class="shopping__cart__component">
                                        <p style="float: right;">Shipping fee</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p>${ship}$</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <div class="shopping__cart__component">
                                        <p style="float: right;">Sub-Total</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p>${total+ship}$</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <div class="shopping__cart__component">
                                        <p style="float: right;">Total</p>
                                    </div>
                                </td>
                                <td>
                                    <div class="shopping__cart__component">
                                        <p style="color: red;">${total+ship}$</p>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="form-check mb-3">
                        <input type="submit" style="float: right;" class="login__btn" value="PAY!">
                    </div>
                </div>
            </div>
        </div>


    </form>

</div>
<div id="footer"></div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script type="module" src="./Components_Customer/ProductCard/ProductCard.js"></script>
<script type="module" src="../../Components_Customer/ProductDetail/ProductDetail.js"></script>
<script src="./Components_Customer/ProductCard/ProductCardCarouselMain.js"></script>
<script src="./Components_Customer/Footer/Footer.js"></script>
<script src="./Components_Customer/Header/Header.js"></script>
<script src="/Customer_Page/Pages/Buyer/CheckOut/main.js"></script>

</html>