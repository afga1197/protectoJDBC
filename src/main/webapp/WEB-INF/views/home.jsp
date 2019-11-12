
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Home</title>
        <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
        <link rel="stylesheet" href="assets/socicon/css/styles.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="assets/CSS/StyleG.css" type="text/css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    </head>
    <body style="background-color: white">    

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
                            <h1>&nbsp;&nbsp;Cambio clim&aacute;tico</h1>
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
                            <c:when test="${rol=='ADMIN'}">
                                <li class="nav-item">
                                   <a class="nav-link link text-black display-4" href="control">
                                       <i class="fas fa-pencil-ruler" width="30px" height="30px" style="color: #009e0f"></i>
                                       <strong>&nbsp;Gestión</strong> 
                                   </a>
                               </li>
                            </c:when>   
                        </c:choose>
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
                        <c:choose>
                            <c:when test="${us!=''}">
                                <li class="nav-item">
                                   <a class="nav-link link text-black display-4" href="#">
                                        <i class="fas fa-user" width="30px" height="30px" style="color: #009e0f"></i>
                                       <strong>&nbsp;Perfil</strong> 
                                   </a>
                               </li>
                            </c:when>   
                        </c:choose>
                    </ul>
                </div>
            </nav>
        </section>
        
        <br><br><br><br><br>
        <i><hr style="color: grey" size="20" hidden /></i>

        <div class="container" id="main_title">
	      <h2 class="mbr-title pt-2 mbr-fonts-style display-2"  style="text-align: center">
        <b>&nbsp;&nbsp;&nbsp;${Secciones[0].getTitulo()}<br></b></h2>
	</div>
        
        <section class="mbr-section content7 cid-ruNvXuN71m" id="fist_cont">
        <div class="container">
            <div class="media-container-row">
                <div class="col-12 col-md-12">
                    <div class="media-container-row">
                        <div class="media-content">
                            <div class="mbr-section-text">
                                <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify" id="black" >
                                    ${Cuadros[0].getTexto()}
                                </p>
                            </div>
                            <span class="vspacer"></span>
                            <div class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href="climateChange">Mas sobre el cambio climatico</a></div>
                        </div>
                        <div class="mbr-figure">
                             <img src="${Cuadros[0].getImagen()}" height="250" width="50">
                        </div>                             
                    </div>
                </div>
            </div>
        </div>
            <i><hr style="color: grey" size="20" hidden /></i>
    </section>

        
    <div class="container" id="second_title">
        <br><br>
        <h2 class="mbr-title pt-2 mbr-fonts-style display-2" style="text-align: center">
        <b>&nbsp;&nbsp;&nbsp;${Secciones[1].getTitulo()}<br></b></h2>
    </div>
        
    <section  id="thrid_section">
        <div class="container">
            <div class="media-container-row">
                <div class="card p-3 col-12 col-md-6 col-lg-4">
                    <div class="card-img pb-3">
                        <img src="${Cuadros[1].getImagen()}">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >${Cuadros[1].getSubtitulo()}</a></h4>
                            <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify" id="parrafo">
                                ${Cuadros[1].getTexto()}
                            </p>
                        <span class="vspacer"></span>
                        <div style="text-align: center" class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href="currentWeather ">Leer mas</a></div>
                    </div>
                </div>

                <div class="card p-3 col-12 col-md-6 col-lg-4">
                    <div class="card-img pb-3">
                            <div class="mbr-figure">
                                <iframe width="300" height="184" src="https://www.youtube.com/embed/nnL6thNEN64" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>                              
                        </div>
                    <div class="card-box">
                        <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center">${Cuadros[2].getSubtitulo()}</a></h4>
                        <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify" id="parrafo">
                            ${Cuadros[2].getTexto()}  
                        </p>    
                            <span class="vspacer"></span>
                        <div style="text-align: center" class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href="currentWeather ">Leer mas</a></div>
                    </div>
                </div>

                <div class="card p-3 col-12 col-md-6 col-lg-4">
                    <div class="card-img pb-3">
                        <img src="${Cuadros[3].getImagen()}" height="180">
                    </div>
                    <div class="card-box">
                        <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center">${Cuadros[3].getSubtitulo()}</a></h4>
                        <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify" id="parrafo">
                            ${Cuadros[3].getTexto()}
                            <span class="vspacer"></span>
                        <div style="text-align: center" class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href="currentWeather ">Leer mas</a></div>
                    </div>
                </div>
            </div>
        </div>
        <i><hr style="color: gray" /></i>
    </section>
        
             
   <section class="progress-bars2 cid-ruXscj5IY2" id="four_section">
        <div class="container">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2"  style="text-align: center">
                <b>&nbsp;&nbsp;&nbsp;${Secciones[2].getTitulo()}<br></b></h2>
            <div class="row pt-5 mt-5">
                <div class="col-md-6 text-elements">
                    <h4 class="section-content-title pb-3 align-left mbr-fonts-style display-5">
                        ${Cuadros[4].getSubtitulo()}</h4>
                    <p class="section-content-text align-left mbr-fonts-style display-7" style="text-align: justify">
                        ${Cuadros[4].getTexto()}
                    </p>
                    <div style="text-align: center" class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href="mitigation">Leer mas</a></div>
                </div>
                <div class="progress_elements col-md-6">
                    <h4 class="section-content-title pb-3 align-left mbr-fonts-style display-5" style="text-align: center">
                        ${Cuadros[5].getSubtitulo()}</h4><br>
                    <div class="progress1 pb-5">
                        <div class="title-wrap">
                            <div class="progressbar-title mbr-fonts-style display-7">
                                <p>Practicar la eficiencia energética</p>
                            </div>
                            <div class="progress_value mbr-fonts-style display-7">
                                <div class="progressbar-number">
                                </div>
                                <span>%</span>
                            </div>
                        </div>
                        <progress class="progress progress-primary " max="100" value="100">
                        </progress>
                    </div>

                    <div class="progress2 pb-5">
                        <div class="title-wrap">
                            <div class="progressbar-title mbr-fonts-style display-7">
                                <p>Mayor uso de energías renovables</p>
                            </div>
                            <div class="progress_value mbr-fonts-style display-7">
                                <div class="progressbar-number">
                                </div>
                                <span>%</span>
                            </div>
                        </div>
                        <progress class="progress progress-primary" max="100" value="90">
                        </progress>
                    </div>

                    <div class="progress3 pb-5">
                        <div class="title-wrap">
                            <div class="progressbar-title mbr-fonts-style display-7">
                                <p>Electrificación de procesos industriales</p>
                            </div>
                            <div class="progress_value mbr-fonts-style display-7">
                                <div class="progressbar-number">
                                </div>
                                <span>%</span>
                            </div>
                        </div>
                        <progress class="progress progress-primary" max="100" value="80">
                        </progress>
                    </div>
                </div>
            </div>
        </div>
        <i><hr style="color: gray" /></i>
    </section>
        
    <section class="progress-bars2 cid-ruXscj5IY2" id="natural_section">
        <div class="container">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2"  style="text-align: center">
                <b>&nbsp;&nbsp;&nbsp;${Secciones[3].getTitulo()}<br></b></h2>
            <div class="row pt-5 mt-5">
                <div class="col-md-6 text-elements">
                    <h4 class="section-content-title pb-3 align-left mbr-fonts-style display-5">
                        ${Cuadros[6].getSubtitulo()}</h4>
                    <p class="section-content-text align-left mbr-fonts-style display-7" style="text-align: justify">
                        ${Cuadros[6].getTexto()}
                    </p>
                    <div style="text-align: center" class="mbr-section-btn"><a class="btn btn-md btn-secondary display-4" href="naturalDisasters">Leer mas</a></div>
                </div>
                <div class="progress_elements col-md-6">
                    <h4 class="section-content-title pb-3 align-left mbr-fonts-style display-5" style="text-align: center">
                        ${Cuadros[7].getSubtitulo()}</h4><br>
                    <div class="card-img pb-3" id="cn">
                        <canvas id="myChart" style="max-width: 500px;" ></canvas>
                        <script src="${Cuadros[7].getGrafica()}"></script>
                    </div>
                </div>
            </div>
        </div>
            <i><hr style="color: grey" size="20" hidden /></i>
    </section>    
     
    <section class="mbr-section form4 cid-ruOSWCqLJZ">
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
    
    </body>
</html>