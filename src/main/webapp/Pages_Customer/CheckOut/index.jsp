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
    <h3 style="color:red;">${error}</h3>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingOne">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
                    aria-expanded="true" aria-controls="collapseOne">
                CHECKOUT OPTION
            </button>
        </h2>
        <div id="collapseOne" collapseOneclass="accordion-collapse collapse show" aria-labelledby="headingOne"
             data-bs-parent="#accordionItems">
            <div class="accordion-body">
                <div class="option__container">
                    <div class="option__1">
                        <h1>New Customer</h1>
                        <p>Please sign up to continue shopping!</p>
                        <br>
                        <a class="register__btn" href="RegisterForward">Register</a>
                    </div>
                    <div class="option__2">
                        <h1>Returning Customer</h1>
                        <h1> ${error}</h1>
                        <p>I am a returning customer</p>
                        <form action="LoginCheckOutController" method="post">
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Username</label>
                                <input name="user" type="text" class="form-control"
                                       placeholder="Enter your Username here!" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Password</label>
                                <input name="password" type="password" class="form-control"
                                       placeholder="Enter your password here!" required>
                            </div>

                            <div class="mb-3">
                                <input type="submit" class="login__btn btn" value="Login">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingTwo">
            <button class="accordion-button collapsed" disabled type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseTwo"
                    aria-expanded="false" aria-controls="collapseTwo">
                ACCOUNT & BILLING DETAILS
            </button>
        </h2>
        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
             data-bs-parent="#accordionItems">
            <div class="accordion-body">
                <div class="accordion-body container">
                    <div class="option__container row">
                        <div class="option__1 col">
                            <legend>Your Personal Details</legend>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>First Name</label>
                                <input type="text" class="form-control" placeholder="Enter your First Name here!"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Last Name</label>
                                <input type="text" class="form-control" placeholder="Enter your Last Name here!"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Telephone</label>
                                <input type="number" class="form-control" placeholder="Enter your Telephone here!"
                                       required>
                            </div>

                        </div>
                        <div class="option__2 col">
                            <legend>Your Address</legend>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Address</label>
                                <input type="text" class="form-control" placeholder="Enter your Address here!" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Road</label>
                                <input type="text" class="form-control" placeholder="Enter your Road Name here!"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Ward</label>
                                <input type="text" class="form-control" placeholder="Enter your Ward here!" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>District</label>
                                <input type="text" class="form-control" placeholder="Enter your District here!"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>City</label>
                                <input type="text" class="form-control" placeholder="Enter your City here!" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"><span>*</span>Country</label>
                                <input type="text" class="form-control" placeholder="Enter your Country here!" required>
                            </div>
                            <div class="mb-3">
                                <a style="float: right; margin-top: 15px;" type="button" class="login__btn"
                                   data-bs-toggle="collapse"
                                   data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">CONTINUE</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingFive">
            <button class="accordion-button collapsed" disabled type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                PAYMENT METHOD
            </button>
        </h2>
        <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive"
             data-bs-parent="#accordionItems">
            <div class="accordion-body">
                <p>Please select the preferred payment method to use on this order.</p>
                <div class="form-check">
                    <input class="form-check-input" type="radio">
                    <label class="form-check-label">
                        COD - Cash On Delivery
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio">
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
            <button class="accordion-button collapsed" disabled type="button" data-bs-toggle="collapse"
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
                            <th scope="col">Model</th>
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
                    <form action="CheckOutWarningLogin">
                        <input type="submit" style="float: right;" value="PAY!" class="login__btn">
                    </form>
                </div>
            </div>
        </div>
    </div>
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