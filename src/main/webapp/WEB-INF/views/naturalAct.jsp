<%-- 
    Document   : naturalAct
    Created on : 22/09/2019, 02:29:59 PM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Actualidad Naturaleza</title>
        <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
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
       </head>
    <body>
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
                                <div class="card-img">
                                    <img src="${Cuadros[1].getImagen()}" alt="" title="" style="width: 70%;">
                                </div><br>

                                <p class="mbr-text pb-3 mbr-fonts-style display-7" style="text-align: justify;"><br>
                                    ${Cuadros[1].getTexto()}
                                </p><br>

                                <br>
                                <h2 class="mbr-title pt-2 mbr-fonts-style display-2" style="text-align: center;">
                                    <b>&nbsp;&nbsp;&nbsp;${Secciones[2].getTitulo()}<br></b></h2><br>
                                <p class="mbr-text pb-3 mbr-fonts-style display-7" style="text-align: justify;">
                                    ${Cuadros[2].getTexto()}
                                </p>
                                <div class="card-img">
                                    <img src="${Cuadros[2].getImagen()}" alt="" title="" style="width: 90%;">
                                </div><br>
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
