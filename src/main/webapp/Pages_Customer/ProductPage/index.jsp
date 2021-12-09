<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noriva || Your store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./Pages_Customer/ProductPage/style.css">
    <link rel="stylesheet" href="./Components_Customer/CategorySideBar/CategorySideBar.css">
    <link rel="stylesheet" href="./Components_Customer/Footer/Footer.css">
    <link rel="stylesheet" href="./Components_Customer/Header/Header.css">
</head>

<body>
<div id="header"></div>
<div class="d-md-flex align-items-stretch">
    <div id="slide_bar"></div>
    <div id="content product_container" class=" pt-5">
        <div class="introduction mb-3">
           
            <img src="https://i8.amplience.net/i/hotter/fitting%20guide?qlt=80&w=1002&h=335&fmt=auto">
            <div class="para__container">
                <div class="shop__des">
                    ‘Noriva’ – Footwear for Everyone
                </div>
                <div class="shop__des">
                    For each one of those shoe sweethearts out there, ‘Noriva’ offer the one-stop goal to pick the
                    correct match of footwear. To satisfy the affection for shoes, we offer heaps of alternatives
                    from driving footwear marks, all under one rooftop. Gone are the days when you needed to go from
                    store to store to locate the correct style and size for yourself.
                </div>
                <div class="shop__des">
                    At ‘Noriva’, you can locate a vast accumulation of dashing footwear in all sizes and styles, all
                    inside a couple of snaps.
                    Simple right? Not just we are here to spare your time, we are putting forth you the most
                    dazzling footwear alternatives from all the first-rate brands like DAVINCHI, PRINCESS, and
                    SIGNATURE. At ‘Noriva’, we offer men, ladies, and child’s shoes perfect for any and each event.
                </div>
                <div class="shop__des">
                    Ideal from game shoes to shoes to flip-flops, there is nothing that you can’t discover at
                    ‘Noriva’ to supplement your clothing. At ‘Noriva’, conveying quality footwear that displays
                    style is our adage.
                </div>
                <div class="shop__des">
                    Devoted to satisfying your shopping wants with no inconvenience, we ensure that you encounter
                    smooth web based requesting background. Our intriguing accumulation of elegantly insightful
                    footwear is accessible at astonishing costs that will really shock you. So be a shoe-holic with
                    ‘Noriva’.
                </div>
            </div>
        </div>

        <div class="search__group mb-3">
            <form action="ProductPageForward">
                <div class="sort_items">
                    <div class="sort_bar">
                        <h5>Sort by:</h5>
                        <div class="custom_select">
                            <select name="sort">
                                <option value="default"> Default</option>
                                <option value="az">Name (A - Z)</option>
                                <option value="za">Name (Z - A)</option>
                                <option value="lh">Price (Low - High)</option>
                                <option value="hl">Price (High - Low)</option>
                            </select>
                            <input type="submit" class="refine-search-btn" value="SEARCH">
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <div class="product_container">
            <c:forEach var="item" items="${listProduct}">
                <a href="FindProductController?id=${item.id}&action=detail">
                    <div class="item">
                        <product-card id="card_item" productName="${item.name}" productPrice="${item.price}"
                                      productImg="${item.picture_url}"/>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</div>
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
<script type="module" src="./Components_Customer/ProductCard/ProductCard.js"></script>
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
<script src="./Components_Customer/CategorySideBar/CategorySideBar.js"></script>
<script src="./Components_Customer/CategorySideBar/CategorySideBarMain.js"></script>
<script src="./Components_Customer/Footer/Footer.js"></script>
<script src="./Components_Customer/Header/Header.js"></script>
<script src="./Pages_Customer/ProductPage/main.js"></script>

</html>