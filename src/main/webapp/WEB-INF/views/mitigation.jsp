<%-- 
    Document   : mitigation
    Created on : 22/10/2019, 09:40:06 AM
    Author     : sala3
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
        <title>Estrategias de mitigación</title>
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="assets/web/CSS/style.css">
        <!--<link rel="stylesheet" href="assets/web/CSS/jquery-ui.css">-->
        <!--<link rel="stylesheet" href="assets/web/CSS/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/web/CSS/owl.theme.default.min.css">-->
        <!--<link rel="stylesheet" href="assets/web/CSS/jquery.fancybox.min.css">-->
        <!--<link rel="stylesheet" href="assets/web/CSS/aos.css">-->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"  crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"  crossorigin="anonymous"></script>
        
    </head>
    <body >
        <section class="menu cid-ruNsw1yRec" once="menu" id="menu1-0">
            <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm" >
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <div class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </button>
                <div class="menu-logo">
                    <div class="navbar-brand">
                        <div>
                            <img src="assets/images/logo2.png" width="70px" height="70px">
                        </div>
                        <span class="navbar-caption-wrap">
                            <h1 style="color: black;">&nbsp;&nbsp;Cambio clim&aacute;tico</h1>
                        </span>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true" >
                        <li class="nav-item">
                            <a class="nav-link link text-black display-4" href="/ASProyec">
                                <i class="fas fa-home" width="30px" height="30px" style="color: #009e0f"></i>
                                <strong>&nbsp;Home</strong>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link text-black display-4" href="register">
                                <i class="fas fa-leaf" style="color: #009e0f"></i>
                                <strong>&nbsp;Registrarse</strong>
                            </a>
                        </li>
                        <li class="nav-item">
                            <c:choose>
                                <c:when test="${us==''}"> 
                                    <a class="nav-link link text-black display-4" href="login">
                                        <i class="fas fa-user" width="30px" height="30px" style="color: #009e0f"></i>
                                        <strong>&nbsp;Login</strong> 
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a class="nav-link link text-black display-4" href="logout">
                                        <i class="fas fa-user" width="30px" height="30px" style="color: #009e0f"></i>
                                        <strong>&nbsp;Logout</strong> 
                                    </a>
                                </c:otherwise>
                            </c:choose>    
                        </li>
                        <c:choose>
                            <c:when test="${us!=''}">
                                <li class="nav-item">
                                   <a class="nav-link link text-black display-4" href="foro">
                                       <i class="fas fa-pencil-ruler" width="30px" height="30px" style="color: #009e0f"></i>
                                       <strong>&nbsp;Foro</strong> 
                                   </a>
                               </li>
                            </c:when>   
                        </c:choose>
                    </ul>
                </div>
            </nav>
        </section>

        <section class="site-blocks-cover overflow-hidden" style="background-color: #000;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 align-self-center">
                        <div class="row">
                            <div class="col-lg-11" style="position: relative;top: -80px;">
                                <h1>${Secciones[0].getTitulo()} <br><span class="typed-words"></span></h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> 

        <section style="background-color: white;" >
            <div class="container">
                <div class="row">
                    <div class="col-12" style="margin-top: -20%;">
                        <img src="${Cuadros[0].getImagen()}" alt="Image" style="display: block; margin-left: auto; margin-right: auto; width: 80%; height: 90%;">
                    </div>
                </div>
            </div>
        </section>

        <section class="site-section" id="about-section" style="background-color: white;">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 mr-auto mb-5">
                        <h2 class="text-black mb-4">${Cuadros[0].getSubtitulo()}</h2>
                        <p style="color: #000; text-align: justify;">
                            ${Cuadros[0].getTexto()}
                        </p>
                    </div>
                    <div class="col-md-6 ml-auto">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="service px-0">
                                    ${Cuadros[1].getImagen()}
                                    <h4 class="text-black mb-3">${Cuadros[1].getSubtitulo()}</h4>
                                    <p style="color: #000; text-align: justify;">
                                       ${Cuadros[1].getTexto()}
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="service px-0">
                                    ${Cuadros[2].getImagen()}
                                    <h4 class="text-black mb-3">${Cuadros[2].getSubtitulo()}</h4>
                                    <p style="color: #000; text-align: justify;">
                                        ${Cuadros[2].getTexto()}
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
            
        <section class="site-section bg-light" id="training-section" style="background-color: #ffffff;">
            <div class="container">
                <div class="row mb-5 justify-content-center" >
                    <div class="col-md-7 text-center">
                        <h2 class="text-black">${Cuadros[3].getSubtitulo()}</h2><br>
                        <p style="text-align: justify;color: #000;">
                            ${Cuadros[3].getTexto()}
                        </p>
                    </div>
                </div>

                <div class="content-all">
                    <div class="content-carrousel">
                        <figure><img src="${Cuadros[4].getImagen()}"></figure>
                        <figure><img src="${Cuadros[5].getImagen()}"></figure>
                        <figure><img src="${Cuadros[6].getImagen()}"></figure>
                    </div>
                </div>
            </div>
        </section>
            
        <section  id="thrid_section" style="position: relative; top: 260px; background-color: #ffffff;">
            <div class="container">
                <div class="media-container-row">
                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <div class="card-img pb-3">
                            <img src="${Cuadros[7].getImagen()}" style="height: 188px;">
                        </div>
                        <div class="card-box">
                            <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center;color: #000;" >${Cuadros[7].getSubtitulo()}</h4>
                            <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify;color: #000;">
                                ${Cuadros[7].getTexto()}
                            </p>
                            <span class="vspacer"></span>
                        </div>
                    </div>

                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <div class="card-img pb-3">
                            <div class="mbr-figure">
                                ${Cuadros[8].getVideo()}
                            </div>
                        </div>
                        <div class="card-box">
                            <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center;color: #000;">${Cuadros[8].getSubtitulo()}</h4>
                            <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify;color: #000;" id="parrafo">
                                ${Cuadros[8].getTexto()}
                            </p>    
                            <span class="vspacer"></span>
                        </div>
                    </div>

                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <div class="card-img pb-3">
                            <img src="${Cuadros[9].getImagen()}" height="188">
                        </div>
                        <div class="card-box">
                            <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center;color: #000;">${Cuadros[9].getSubtitulo()}</h4>
                            <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify;color: #000;"> 
                                ${Cuadros[9].getTexto()}
                            </p>
                                <span class="vspacer"></span>
                        </div>
                    </div>
                </div>
            </div>
            <i><hr style="color: gray" /></i>
        </section>
            
        <section class="mbr-section form4 cid-ruOSWCqLJZ" style="position: relative; top: 360px;">
            <div class="container"  >
                <div class="google-map" ><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.772498841478!2d-74.07112555125671!3d4.634631343504749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9a2e545a44b1%3A0x4cf0b8f62e304521!2sUniversidad+Cat%C3%B3lica+de+Colombia+Sede+El+Claustro!5e0!3m2!1ses!2sco!4v1565907885378!5m2!1ses!2sco" width="1100" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
            </div>
            <br><br>
            <footer id="final">
                <div style="text-align: center" >
                    <p class="mbr-text mbr-fonts-style display-7" style="color: black" >
                        Copyright ©2019 Todos los derechos revervados <br>
                    </p>
                </div>
                <div class="soc-item" style="text-align: center">
                    <a href="#" target="_blank">
                        <span class="mbr-iconfont mbr-iconfont-social socicon-twitter socicon"></span>
                    </a>

                    <a href="#" target="_blank">
                        <span class="mbr-iconfont mbr-iconfont-social socicon-facebook socicon"></span>
                    </a>

                    <a href="#" target="_blank" >
                        <span class="mbr-iconfont mbr-iconfont-social socicon-youtube socicon"></span>
                    </a>
                </div>
            </footer>    
        </section>
            

        <!--<script src="assets/web/assets/jquery/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/web/jquery-ui.js"></script>
        <script src="assets/web/popper.min.js"></script>
        <script src="assets/web/owl.carousel.min.js"></script>
        <script src="assets/web/jquery.countdown.min.js"></script>
        <script src="assets/web/jquery.easing.1.3.js"></script>
        <script src="assets/web/aos.js"></script>
        <script src="assets/web/jquery.fancybox.min.js"></script>
        <script src="assets/web/jquery.sticky.js"></script>
        <script src="assets/web/isotope.pkgd.min.js"></script>-->
        <script src="assets/web/assets/jquery/jquery.min.js"></script>
        <script src="assets/popper/popper.min.js"></script>
        <script src="assets/tether/tether.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/dropdown/js/nav-dropdown.js"></script>
        <script src="assets/dropdown/js/navbar-dropdown.js"></script>
        <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
        <script src="assets/parallax/jarallax.min.js"></script>
        <script src="assets/smoothscroll/smooth-scroll.js"></script>
        <script src="assets/theme/js/script.js"></script>
        <script src="assets/web/typed.js"></script>
       
        <script>
           var typed = new Typed(".typed-words", {
           strings: ["Aprende un poco sobre ellas","ayuda al clima"],
           typeSpeed: 60,
           backSpeed: 60,
           backDelay: 4000,
           startDelay: 1000,
           loop: true,
           showCursor: true
           });
        </script>
        
    </body>
</html>
