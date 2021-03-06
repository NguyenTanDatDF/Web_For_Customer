<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Noriva || Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
          integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./Components_Customer/AccountSideBar/AccountSideBar.css">
    <link rel="stylesheet" href="./Components_Customer/Footer/Footer.css">
    <link rel="stylesheet" href="./Components_Customer/Header/Header.css">
    <link rel="stylesheet" href="./Pages_Customer/MyAccount/Login/style.css">
</head>

<body>
    <div id="header"></div>
    <div class="d-md-flex align-items-stretch">
        <div id="accountslide_bar"></div>
        <div id="content" class=" p-md-5 pt-5">
            <div class="about__us__container">
                <h1>Login</h1>
                <div class="about__us__paragraph">
                    <div class="about__us__paragraph__text row">
                        <div class="card__1 col">
                            <div class="card-body__1">
                                <div class="create_new_account ">
                                    <h2>New Customer</h2>
                                    <strong>Register Account</strong>
                                    <p>By creating an account you will be able to shop faster, be up to date on an
                                        order's status, and keep track of the orders you have previously made.</p>
                                    <a class="btn" href="RegisterForward">CONTINUE</a>
                                </div>
                            </div>
                        </div>
                        <div class="card__2 col">
                            <div class="card-body__2">
                                <h2>Returning Customer</h2>
                                <h2 style = "color: red;">${error}</h2>
                                <strong>I am a returning customer</strong>
                                <form action = "LoginController" method ="post">
                                    <div class="mb-3">
                                      <label class="form-label">Username</label>
                                      <input type="text" class="form-control" name = "user">
                                    </div>
                                    <div class="mb-3">
                                      <label class="form-label">Password</label>
                                      <input type="password" class="form-control" name = "password">
                                    </div>
                                    <button class="form__btn" type="submit">SIGN IN</button>
                                  </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
</body>

<script src="https://kit.fontawesome.com/e82e1ec9a6.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="./Components_Customer/AccountSideBar/AccountSideBar.js"></script>
<script src="./Components_Customer/AccountSideBar/AccountSideBarMain.js"></script>
<script src="./Components_Customer/Footer/Footer.js"></script>
<script src="./Components_Customer/Header/Header.js"></script>
<script src="/Customer_Page/Pages/MyAccount/Login/main.js"></script>

</html>