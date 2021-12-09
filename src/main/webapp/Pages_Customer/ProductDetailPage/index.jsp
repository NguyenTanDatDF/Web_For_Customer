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
    <title> Noriva || Product Detail</title>
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./Components_Customer/Header/Header.css">
    <link rel="stylesheet" href="./Components_Customer/ProductCard/ProductCardCarousel.css">
    <link rel="stylesheet" href="./Components_Customer/Footer/Footer.css">
    <link rel="stylesheet" href="./Pages_Customer/ProductDetailPage/style.css">
</head>

<body style="overflow-x: hidden;">

<div id="header" style="margin-bottom: 30px;"></div>
<!--   <product-detail productName="${product.name}" productPrice="${product.price}"$ brand="${product.brand_code}" stock=${product.quatity}   model="${product.category_code}" description="${product.description}" productImage="${product.picture_url}"></product-detail> -->

<div class="product__detail">
    <div class="product__name">
        <h2>${product.name}</h2>
    </div>
    <div class="product__detail__container">
        <div class="product__detail__image">
            <img src= ${product.picture_url}>

        </div>
        <div class="product__detail__booking">
            <div class="booking__top">
                <h1>${product.name}</h1>
                <div class="product__rating">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-star-fill" viewBox="0 0 16 16">
                        <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                    </svg>
                </div>
                <br>
            </div>
            <div class="booking__product__detail">
                <br>
                <p>Brand: <span id='brand'>${product.brand_code}</span></p>
                <p>Product Model: <span id='model'>${product.category_code}</p>
                <p>Availability: <span id='stock'>${product.quatity}</p>
                <br>
            </div>
            <div class="booking__price">
                <br>
                <p>Price:</p>
                <h2><span id='price'>${product.price}$</span></h2>
                <br>
            </div>
            <div class="booking">
                <br>
                <label>Quantity</label>
                <div class="booking__adjust">
                    <form action="CookieController">
                        <div class="btn__container row">
                            <div class="quantity__adjust col">
                                <div class='quantity__container'>
                                    <input type="number" min="1" max=${product.quatity} value ="1" class='qty__value' id='
                                qty__value' name = "quatity"></input>
                                </div>
                            </div>
                            <div class="add__to__cart col">
                                <button class="add__cart__btn">ADD TO CART</button>
                                <input type="hidden" value=${product.id} name = "id" id = "id">
                                <input type="hidden" value="" name="action">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="product__description">
        <h2>DESCRIPTION</h2>
        <br>
        <p>
            <br>
            <span id='description'>${product.description}</span>
            <br>
        </p>
    </div>
</div>



<section class="owl">              
    <h2>RELATED PRODUCT</h2>
    <div class="wrapper">
        <div class="carousel owl-carousel">
        <c:forEach var="item" items="${Related_Product}">
            <product-card productName="${item.name}" productPrice="${item.price}"
                          productImg=${item.picture_url}></product-card>
           </c:forEach>
        </div>
    </div>
</section>
<div id="footer"></div>




<!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "108828571645399");
      chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v12.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>




</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script type="module" src="./Components_Customer/ProductCard/ProductCard.js"></script>
<script type="module" src="./Components_Customer/ProductDetail/ProductDetail.js"></script>
<script src="./Components_Customer/Header/Header.js"></script>
<script src="./Components_Customer/ProductCard/ProductCardCarouselMain.js"></script>
<script src="./Components_Customer/Footer/Footer.js"></script>
<script src="./Pages_Customer/ProductDetailPage/main.js"></script>

</html>