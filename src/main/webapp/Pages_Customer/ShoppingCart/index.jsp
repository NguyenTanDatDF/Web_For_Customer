<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noriva || Shopping cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="./Components_Customer/Footer/Footer.css">
    <link rel="stylesheet" href="./Components_Customer/Header/Header.css">
    <link rel="stylesheet" href="./Pages_Customer/ShoppingCart/ShoppingCart.css">
    <link rel="stylesheet" href="./Pages_Customer/ShoppingCart/style.css">
</head>

<body>
<div class="mb-3" id="header"></div>
<div class="shopping__cart_container">
    <h1>SHOPPING CART</h1>
    <div class="shopping__cart__table">
        <div style="overflow-x: auto">
            <table class="table table-bordered">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Image</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Model</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Unit Price</th>
                    <th scope="col">Total Price</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${listProduct}">
                    <tr>
                        <th scope="row">
                            <div class="shopping__cart__image">
                                <img
                                        src=${item.picture_url}>
                            </div>
                        </th>
                        <td>
                            <div class="shopping__cart__component">
                                <a href="#">${item.name}</a>
                            </div>
                        </td>
                        <td>
                            <div class="shopping__cart__component">
                                <p>${item.brand_code}</p>
                            </div>
                        </td>
                        <td>
                            <div class="shopping__cart__component">
                                <form action="CookieController">
                                    <div class="group__btn__container">
                                        <div>
                                            <input type="number" min="1" value=${item.quatity} name = "quatity">
                                            <input type="hidden" value=${item.id} name = "id">
                                            <input type="hidden" value="update" name="action">
                                        </div>
                                        <div>
                                            <button class="update__quantity">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                     fill="currentColor"
                                                     class="bi bi-arrow-repeat" viewBox="0 0 16 16">
                                                    <path
                                                            d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z"/>
                                                    <path fill-rule="evenodd"
                                                          d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z"/>
                                                </svg>
                                            </button>
                                        </div>
                                        <div>
                                            <form action="DeleteCartController">
                                                <input type="hidden" value=${item.id} name = "id">
                                                <button class="delete__product">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                         fill="currentColor"
                                                         class="bi bi-x-circle-fill" viewBox="0 0 16 16">
                                                        <path
                                                                d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"/>
                                                    </svg>
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </form>
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


                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="total__fee__table">
            <table class="table table-bordered">
                <tbody>
                    <td class="fee__type">Total Cost:</td>
                    <td class="total__money" style="color: #db251f;">${total}$</td>
                </tbody>
            </table>
        </div>
    </div>

    <div class="shopping__cart__bottom__button">
        <a class="continue__btn btn" href="ProductPageForward">Continue shopping</a>
<%--        <div style="width: 970px;"></div>--%>
        <a class="checkout__btn btn" href="CheckoutForward">Checkout</a>
    </div>
</div>
<div id="footer"></div>
</body>
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
<script src="./Components_Customer/Footer/Footer.js"></script>
<script src="./Components_Customer/Header/Header.js"></script>
<script src="./main.js"></script>

</html>