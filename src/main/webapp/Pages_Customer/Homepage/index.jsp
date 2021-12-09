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
    <title>Noriva || Home</title>
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
        integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./Components_Customer/Footer/Footer.css">
    <link rel="stylesheet" href="./Components_Customer/Header/Header.css">
    <link rel="stylesheet" href="./Components_Customer/ProductCard/ProductCardCarousel.css">
    <link rel="stylesheet" href="./Pages_Customer/Homepage/style.css">
</head>

<body>
    <div id="header"></div>
    <!-- home slider -->
    <div class="slider">
        <div class="slides">
            <input type="radio" name="radio-btn" id="radio1">
            <input type="radio" name="radio-btn" id="radio2">
            <input type="radio" name="radio-btn" id="radio3">
            <input type="radio" name="radio-btn" id="radio4">
            <div class="slide first">
                <img src="https://images.pexels.com/photos/6776564/pexels-photo-6776564.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                    alt="">
            </div>
            <div class="slide">
                <img src="https://images.pexels.com/photos/6776614/pexels-photo-6776614.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                    alt="">
            </div>
            <div class="slide">
                <img src="https://images.pexels.com/photos/1598505/pexels-photo-1598505.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                    alt="">
            </div>
            <div class="slide">
                <img src="https://images.pexels.com/photos/2385477/pexels-photo-2385477.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                    alt="">
            </div>
            <div class="navigation-auto">
                <div class="auto-btn1"></div>
                <div class="auto-btn2"></div>
                <div class="auto-btn3"></div>
                <div class="auto-btn4"></div>
            </div>
            <div class="navigation-manual">
                <label for="radio1" class="manual-btn"></label>
                <label for="radio2" class="manual-btn"></label>
                <label for="radio3" class="manual-btn"></label>
                <label for="radio4" class="manual-btn"></label>
            </div>
        </div>
    </div>
    <!-- introduction card -->
    <div class="image__card">
        <div class="image__card__item">
            <img
                src="https://images.pexels.com/photos/1124466/pexels-photo-1124466.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
            <div class="image__btn__group">
                <p>Nike</p>
                <a class="show__now__btn" href="ProductPageForward">Shop now</a>
            </div>
        </div>
        <div class="image__card__item">
            <img
                src="https://images.pexels.com/photos/684152/pexels-photo-684152.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
            <div class="image__btn__group">
                <p>Adidas</p>
                <a class="show__now__btn" href="ProductPageForward">Shop now</a>
            </div>
        </div>
    </div>
    <!-- product carousel -->
    <section class="owl">
        <h2>Men's Collection</h2>
        
 
        <div class="wrapper">
               
       
            <div class="carousel owl-carousel">
               <c:forEach var="item" items="${men}">
                <a  style =" outline:none; text-decoration: none;" href ="FindProductController?id=${item.id}&action=detail">
          <product-card productName= "${item.name}" productPrice="${item.price}$" productImg= "${item.picture_url}"></product-card>  
                      </c:forEach>
            </div>
            
        </div>
        
         
         
    </section>
    <!-- introduction card -->
    <div class="image__card">
        <div class="image__card__item">
            <img
                src="https://images.pexels.com/photos/2759785/pexels-photo-2759785.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
            <div class="image__btn__group">
                <p>Puma</p>
                
                <a class="show__now__btn" href="SearchCategoryController?category=men&brand=Puma">Shop now</a>
            </div>
        </div>
        <div class="image__card__item">
            <img
                src="https://images.pexels.com/photos/2351858/pexels-photo-2351858.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
            <div class="image__btn__group">
                <p>Converse</p>
                <a class="show__now__btn" href="SearchCategoryController?category=women&brand=Converse">Shop now</a>
            </div>
        </div>
    </div>
    <!-- product carousel -->
    <section class="owl">
        <h2>Woman's Collection</h2>
        <div class="wrapper">
     
            <div class="carousel owl-carousel">
                 <c:forEach var="item" items="${women}">
           
         <a  style ="outline:none; text-decoration: none;" href ="FindProductController?id=${item.id}&action=detail">
          <product-card productName= "${item.name}" productPrice="${item.price}$" productImg= "${item.picture_url}"></product-card>  
               
               
                </c:forEach>
            </div>
            </a>
              
        </div>
              
        
    </section>

    <section class="bottom__contain">
        <h2 class="section-title">Sportware Collection</h2>
        <div class="container sportware__container">
            <div class="row sportware-items">
                <div class="col-sm sportware">
                    <br><br><br><br><br><br><br>
                    <a href="SearchCategoryController?category=clothes&brand=GYM" class="shopping__button">GYM</a>
                </div>
                <div class="col-sm sportware">
                    <br><br><br><br><br><br><br>
                    <a href="SearchCategoryController?category=women&brand=YOGA" class="shopping__button">YOGA</a>
                </div>
                <div class="col-sm sportware">
                    <br><br><br><br><br><br><br>
                    <a href="SearchCategoryController?category=women&brand=Swimming" class="shopping__button">SWIMMING</a>
                </div>
            </div>
        </div>
    </section>

    <!-- footer -->
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
<script src="./Components_Customer/ProductCard/ProductCardCarouselMain.js"></script>
<script src="./Components_Customer/Footer/Footer.js"></script>
<script src="./Components_Customer/Header/Header.js"></script>
<!--<script src="./Pages_Customer/Pages/Homepage/main.js"></script>-->

</html>