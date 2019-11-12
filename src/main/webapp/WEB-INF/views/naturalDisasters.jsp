<%-- 
    Document   : climateChange
    Created on : 19/09/2019, 06:02:40 PM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Desastres naturales</title>
        <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!--<link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="assets/socicon/css/styles.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="assets/CSS/StyleG.css" type="text/css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
        <script src="assets/JS/navegacion.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>              
    </head>
    <body>
        <section class="menu cid-ruNsw1yRec" once="menu" id="menu1-0">
            <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
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
                            <h1>&nbsp;&nbsp;Cambio clim&aacute;tico</h1>
                        </span>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true">
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
        
        <br><br><br>
        <div class="bd-example">
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="assets/images/tsunami.jpg" class="d-block w-100" alt="PRIMER" style="width: 945px;height: 280px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Desastres hidrológicos</h5>
                            
                            <p>
                                <a  id="hydrologicalDisasters" onclick="carga()"><strong>Desastres hidrologicos</strong></a>
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="assets/images/sequia.jpg" class="d-block w-100" alt="SEGUNDO" style="width: 945px;height: 280px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Desastres meteorológicos</h5>
                            <p>
                                <a  id="meteorologicalDisasters" onclick="carga()"><strong>Desastres metereologicos</strong></a>
                            </p>                        
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="assets/images/volcan.jpeg" class="d-block w-100" alt="TERCER" style="width: 945px;height: 280px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Desastres geofísicos</h5>
                            <p>
                                <a  id="geophysicalDisasters" onclick="carga()"><strong>Desastres geofísicos</strong></a>
                            </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="assets/images/infeccion.jpg" class="d-block w-100" alt="CUARTO" style="width: 945px;height: 280px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Desastres biológicos</h5>
                            <p>
                                <a  id="biologicalDisasters" onclick="carga()"><strong>Desastres biologicos</strong></a>
                            </p>                        
                        </div>
                    </div>
                    
                    <div class="carousel-item">
                        <img src="assets/images/desastre_natural.jpg" class="d-block w-100" alt="QUINTO" style="width: 945px;height: 280px;">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Desastres naturales</h5>
                            <p>
                                <a  id="naturalAct" onclick="carga()"><strong>Desastres naturales</strong></a>
                            </p>                        
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
       
        <div id="contenido" style="background-color: white;" ><br><br>
            <section class="header1 cid-ruXI5S6ubv" id="header16-1l"  style="background-color: white;top: -20px;">
                <div class="container">
                    <div class="row ">
                        <div class="col-md-8">
                            <div class="content-column">
                                <h2 class="mbr-title pt-2 mbr-fonts-style display-2" style="text-align: center">
                                    <b>&nbsp;&nbsp;&nbsp;${Secciones[0].getTitulo()}<br></b></h2>
                                <div class="blog-entry">
                                    <div class="card-img">
                                        <img src="${Cuadros[0].getImagen()}" alt="" title="">
                                    </div><br>
                                    <div class="post-meta">
                                        <span class="clear-all"></span>
                                    </div> 
                                    <p class="mbr-text pb-3 mbr-fonts-style display-7" style="text-align: justify;">
                                        ${Cuadros[0].getTexto()}
                                    </p>
                                    <br>
                                    <h2 class="mbr-title pt-2 mbr-fonts-style display-2" style="text-align: center;">
                                        <b>&nbsp;&nbsp;&nbsp;${Secciones[1].getTitulo()}<br></b></h2>
                                    <img src="${Cuadros[1].getImagen()}" style="width: 90%;">

                                    <p class="mbr-text pb-3 mbr-fonts-style display-7" style="text-align: justify;"><br>
                                         ${Cuadros[1].getTexto()}
                                    </p><br>

                                    <br>
                                    <h2 class="mbr-title pt-2 mbr-fonts-style display-2" style="text-align: center;">
                                        <b>&nbsp;&nbsp;&nbsp;${Secciones[2].getTitulo()}<br></b></h2><br>
                                            <p class="mbr-text pb-3 mbr-fonts-style display-7" style="text-align: justify;">
                                                ${Cuadros[2].getTexto()}
                                            </p>
                                    <img src= "${Cuadros[2].getImagen()}" style="width: 100%;">
                                </div>        
                            </div>
                        </div>

                        <div class="col-md-4">
                            <span class="sidebar-top"></span>
                            <div class="sidebar">
                                <div class="sidebar-block">
                                    <h3 class="card-title pb-3 mbr-fonts-style display-5" style="text-align: center">
                                        ${Cuadros[3].getSubtitulo()}
                                    </h3>
                                    <canvas id="radarChart"></canvas>
                                    <script src="${Cuadros[3].getGrafica()}" style="width: 400px;height: 300px;"></script> 
                                </div>

                                <div class="sidebar-block">
                                    <h3 class="card-title pb-3 mbr-fonts-style display-5" style="text-align: center">
                                        ${Cuadros[4].getSubtitulo()}</h3>
                                    <canvas id="pieChart" style="width: 400px;height: 350px;"></canvas>
                                    <script src="${Cuadros[4].getGrafica()}" ></script>
                                </div>

                                <div class="sidebar-block"><br>
                                    <h3 class="card-title pb-3 mbr-fonts-style display-5" style="text-align: center">
                                        ${Cuadros[5].getSubtitulo()}</h3>
                                    <canvas id="polarChart"></canvas>
                                    <script src="${Cuadros[5].getGrafica()}" ></script>
                                </div>

                                <div class="sidebar-block">
                                    <h3 class="card-title pb-3 mbr-fonts-style display-5" style="text-align: center">
                                         ${Cuadros[6].getSubtitulo()}</h3>
                                    <canvas id="bubbleChart"></canvas>
                                        <script src="${Cuadros[6].getGrafica()}" ></script>
                                </div>
                                <br>
                                <div class="sidebar-block">
                                    <h3 class="card-title pb-3 mbr-fonts-style display-5" style="text-align: center">
                                        ${Cuadros[7].getSubtitulo()}</h3>
                                    <canvas id="doughnutChart"></canvas><br>
                                    <script src="${Cuadros[7].getGrafica()}" ></script>
                                </div> 
                                <br>
                                <div class="sidebar-block">
                                    <h3 class="card-title pb-3 mbr-fonts-style display-5" style="text-align: center">
                                         ${Cuadros[8].getSubtitulo()}</h3>
                                    <canvas id="lineChart"></canvas><br>
                                    <script src="${Cuadros[8].getGrafica()}" ></script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
        
        
        <section class="mbr-section form4 cid-ruOSWCqLJZ" >
            <div class="container"  >
                <div class="google-map" ><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.772498841478!2d-74.07112555125671!3d4.634631343504749!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e3f9a2e545a44b1%3A0x4cf0b8f62e304521!2sUniversidad+Cat%C3%B3lica+de+Colombia+Sede+El+Claustro!5e0!3m2!1ses!2sco!4v1565907885378!5m2!1ses!2sco" width="1100" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
            </div>
            <br><br>
            <div id="final">
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

            </div>    
        </section>
        
        
        

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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
    </body>
</html>
