<%-- 
    Document   : geophysicalDisasters
    Created on : 21/09/2019, 10:15:22 PM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Desastres geologicos</title>
        <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/socicon/css/styles.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="assets/CSS/StyleG.css" type="text/css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    </head>
    <body>
        <br><br>
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
                            </div>
                            <div class="mbr-figure">
                                <img src="${Cuadros[0].getImagen()}" style="width: 500px;height: 200px;">                             
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
                            <div class="mbr-figure">
                                ${Cuadros[1].getVideo()}
                            </div>                              
                        </div>
                        <div class="card-box">
                            <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >${Cuadros[1].getSubtitulo()}&nbsp;</a></h4>
                            <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify" id="parrafo">
                                ${Cuadros[1].getTexto()}
                            </p>
                            <span class="vspacer"></span>
                        </div>
                    </div>

                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <div class="card-img pb-3">
                            <div class="mbr-figure">
                                ${Cuadros[2].getVideo()}
                            </div>                    
                        </div>
                        <div class="card-box">
                            <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center">${Cuadros[2].getSubtitulo()}&nbsp;</a></h4>
                            <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify" id="parrafo">
                                ${Cuadros[2].getTexto()}
                            </p>
                            <span class="vspacer"></span>
                        </div>
                    </div>

                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <div class="card-img pb-3">
                            <div class="mbr-figure">
                                ${Cuadros[3].getVideo()}
                            </div>                              
                        </div>
                        <div class="card-box">
                            <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center">${Cuadros[3].getSubtitulo()}&nbsp;</a></h4>
                            <p class="mbr-text mbr-fonts-style display-7" style="text-align: justify" id="parrafo">
                                ${Cuadros[3].getTexto()}
                            </p>
                            <span class="vspacer"></span>
                        </div>
                    </div>
                </div>
            </div>
            <i><hr style="color: gray" /></i>
        </section>

        <div class="container" id="main_title">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2"  style="text-align: center">
                <b>&nbsp;&nbsp;&nbsp;${Secciones[2].getTitulo()}<br></b></h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <canvas id="lineChart" ></canvas>
                            <script src="${Cuadros[4].getGrafica()}"></script>
                        </div>
                    </div>
                </div>
            </div>
            <i><hr style="color: gray" /></i>
        </div>

        <div class="container" id="main_title">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2"  style="text-align: center">
                <b>&nbsp;&nbsp;&nbsp;${Secciones[3].getTitulo()}<br></b></h2>
        </div>
        <br><br><br>
        <section class="mbr-section content7 cid-ruNvXuN71m" id="fist_cont">
            <div class="container">
                <div class="media-container-row">
                    <div class="col-12 col-md-12">
                        <div class="media-container-row">
                            <div class="media-content">
                                <div class="mbr-section-text">
                                    <p class="mbr-text align-right mb-0 mbr-fonts-style display-7" style="text-align: justify" id="black" >
                                        ${Cuadros[5].getTexto()}
                                    </p>
                                </div>
                                <span class="vspacer"></span>
                            </div>
                            <div class="mbr-figure" >
                                <img src="${Cuadros[5].getImagen()}" style="width: 500px;height: 200px;">                             
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <i><hr style="color: grey" size="20" hidden /></i>
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
