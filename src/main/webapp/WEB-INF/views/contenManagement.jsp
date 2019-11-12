<%-- 
    Document   : contenManagement
    Created on : 23/10/2019, 09:02:11 PM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Gestor de contenidos</title>
        <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!--<link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">-->
        <link rel="stylesheet" href="assets/socicon/css/styles.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="assets/CSS/climateChangeG.css" type="text/css">
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>-->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="row" > 
            <div class="col-sm-3">
                <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
                    <a class="navbar-brand js-scroll-trigger" href="#page-top">
                        <span class="d-block d-lg-none"></span>
                        <span class="d-none d-lg-block">
                            <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets/images/config.jpg" alt="">
                        </span>
                    </a>
                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <div class="hamburger">
                            <span></span> 
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Home">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Clima">Acción por el clima</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Mundo">Actualidad del mundo</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Mitigacion">Estrategias de mitigación</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Naturales">Desastres naturales</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Hidrologico">Desastre hidrológico</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Metereologico">Desastre metereológico</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Geofisico">Desastre geofísico</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#Biologico">Desastre biológico</a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>

            <div class="col-sm-8" >
                <section class="mbr-section content7 cid-ruNvXuN71m" id="Home">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0" style="color: #000; text-align: center;">
                                                <span class="typed-words"></span></h1>
                                            </h1>
                                            <br><br>
                                            <a href ="configHome"><i class="fas fa-home" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: center;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>

                <section class="mbr-section content7 cid-ruNvXuN71m" id="Clima">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0" >
                                                Modulo acción por el clima
                                            </h1>
                                            <br><br>
                                            <a href ="configClimateChange"><i class="fas fa-leaf" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>

                <section class="mbr-section content7 cid-ruNvXuN71m" id="Mundo">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0" >
                                                Modulo actualidad del mundo
                                            </h1>
                                            <br><br>
                                            <a href ="configCurrentWeather"><i class="fas fa-globe" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >
                                                
                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>

                <section class="mbr-section content7 cid-ruNvXuN71m" id="Mitigacion">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0">
                                                Modulo estrategias de mitigación
                                            </h1>
                                            <br><br>
                                            <a href ="configMitigation"><i class="fas fa-tree" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>

                <section class="mbr-section content7 cid-ruNvXuN71m" id="Naturales">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0">
                                                Modulo desastres naturales
                                            </h1>
                                            <br><br>
                                            <a href ="configNaturalDisasters"><i class="fas fa-adjust" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>
                                            
                <section class="mbr-section content7 cid-ruNvXuN71m" id="Hidrologico">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0">
                                                Modulo desastres hidrológicos
                                            </h1>
                                            <br><br>
                                            <a href ="configHydrological"><i class="fas fa-tint" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>                      
                                            
                <section class="mbr-section content7 cid-ruNvXuN71m" id="Metereologico">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0">
                                                Modulo desastres metereológicos
                                            </h1>
                                            <br><br>
                                            <a href ="configMetereological"><i class="fas fa-snowflake" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>                            
                                 
                <section class="mbr-section content7 cid-ruNvXuN71m" id="Geofisico">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0">
                                                Modulo desastres geofísicos
                                            </h1>
                                            <br><br>
                                            <a href ="configGeophysical"><i class="fas fa-fire" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>                     
                                                                   
                <section class="mbr-section content7 cid-ruNvXuN71m" id="Biologico">
                    <div class="container">
                        <div class="media-container-row">
                            <div class="col-12 col-md-12">
                                <div class="media-container-row">
                                    <div class="media-content">
                                        <div class="mbr-section-text" style="text-align: center;">
                                            <h1 class="mb-0">
                                                Modulo desastres biológicos
                                            </h1>
                                            <br><br>
                                            <a href ="configBiological"><i class="fas fa-frog" width="400px" height="250px" style="width: 400px; height: 250px; margin-left: 16%; margin-right: 16%;color: #000;"></i></a>
                                            <br><br>
                                            <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify;color: #000;" >

                                            </p>
                                        </div>
                                        <span class="vspacer"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <i><hr style="color: grey" size="20" hidden /></i>
                </section>

                <section class="mbr-section form4 cid-ruOSWCqLJZ" id="mapa" style="background-color: #ffffff;">
                    <div class="container"  >
                        <div class="google-map" ><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.772498841478!2d-74.07112555125671!3d4.634631343504749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9a2e545a44b1%3A0x4cf0b8f62e304521!2sUniversidad+Cat%C3%B3lica+de+Colombia+Sede+El+Claustro!5e0!3m2!1ses!2sco!4v1565907885378!5m2!1ses!2sco" width="1600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
                    </div>
                    <br><br>
                    <footer id="final">
                        <div style="text-align: center"style="text-align: center;" >
                            <p class="mbr-text mbr-fonts-style display-7" style="color: black" >
                                Copyright ©2019 Todos los derechos revervados <br>
                            </p>
                        </div>
                        <div class="soc-item" style="text-align: center">
                            <a href="#" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-twitter socicon" style="color: #000;"></span>
                            </a>

                            <a href="#" target="_blank">
                                <span class="mbr-iconfont mbr-iconfont-social socicon-facebook socicon" style="color: #000;"></span>
                            </a>

                            <a href="#" target="_blank" >
                                <span class="mbr-iconfont mbr-iconfont-social socicon-youtube socicon" style="color: #000;"></span>
                            </a>
                        </div>

                    </footer>    
                </section>
            </div>
        </div>

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
        <!--<script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/web/jquery.easing.min.js"></script>
        <script src="assets/web/resume.min.js"></script>-->
        <script src="assets/web/typed.js"></script>

        <script>
           var typed = new Typed(".typed-words", {
           strings: ["Gestor de contenidos ","Administra el contenido de tu página web"],
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
