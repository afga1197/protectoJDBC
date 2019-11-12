<%-- 
    Document   : managementComment
    Created on : 02/11/2019, 02:36:58 PM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Gestión comentarios</title>
        <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
        <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
        <link rel="stylesheet" href="assets/tether/tether.min.css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/socicon/css/styles.css">
        <link rel="stylesheet" href="assets/dropdown/css/style.css">
        <link rel="stylesheet" href="assets/theme/css/style.css">
        <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
        <link rel="stylesheet" href="assets/CSS/StyleG.css" type="text/css">
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
        <script src="assets/JS/mensajes.js"></script>
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
                        <li class="nav-item">
                            <a class="nav-link link text-black display-4" href="foro">
                                <i class="fas fa-pencil-ruler" width="30px" height="30px" style="color: #009e0f"></i>
                                <strong>&nbsp;Foro</strong> 
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </section>
        <br><br><br><br><br>
        
        <header id="login_title">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="mbr-title pt-2 mbr-fonts-style display-2" style="text-align: center" id="main_title">
                            <b style="color: #ffffff;">Gestión de sus comentarios<br></b></h1>
                    </div>
                </div>
            </div>
        </header>
        
        <div class="container">
            <i class="fas fa-pencil" style="color: #009e0f;" id="big_login"></i>
            <br>
            <h2 style="text-align: center;">Sus comentarios </h2>
            <br>
            <table class="table table-bordered">
                <tr align="center" id="Title_Users" >
                    <td align="center"><strong>ID</strong></td>
                    <td align="center"><strong>Comentario</strong></td>
                    <td align="center"><strong>Gestión</strong></td>
                </tr>
                <c:forEach items="${con}" var="algo">
                    <tr>
                        <td align="center"><strong>${algo.getID()}</strong></td>
                        <td align="center">${algo.getComentario()}</td>
                        <td aling="center">
                            <a class = "colum_" style="color: black" href="editComentario?algox=${algo.getID()}"><strong>update</strong></a>
                            <a class = "colum_" style="color: black" onclick="mensajeEliminado()" href="eliminarComentario?algox=${algo.getID()}"><strong>delete</strong></a>
                        </td>
                    </tr>
                </c:forEach>         
            </table>
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
    </body>
</html>
