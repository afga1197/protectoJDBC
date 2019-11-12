<%-- 
    Document   : registrer
    Created on : 28/08/2019, 05:13:03 PM
    Author     : Toshiba
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Control del sistema</title>
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
    <body style="background-color: white">
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
                        <li class="nav-item">
                            <a class="nav-link link text-black display-4" href="control">
                                <i class="fas fa-pencil-ruler" width="30px" height="30px" style="color: #009e0f"></i>
                                <strong>&nbsp;Control usuarios</strong> 
                            </a>
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

        <br><br><br><br><br>

        <header id="login_title">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="mbr-title pt-2 mbr-fonts-style display-2" style="text-align: center" id="main_title">
                            <b style="color: #ffffff;">Control del sistema<br></b></h1>
                    </div>
                </div>
            </div>
        </header>

        <div id="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="list-group">
                            <a href="#" class="list-group-item active" style="background-color: #009e0f;">
                                <i class="fas fa-cog" style="color: #ffffff"></i>
                                <strong>Informaci&oacute;n del sistema</strong>
                            </a>
                            <div class="list-group-item">        
                                <a href="#">
                                    <i class="fas fa-user" style="color: #009e0f;"></i>
                                    <strong  style="color: #000">&nbsp;Usuarios:&nbsp;&nbsp;${numUser}</strong>
                                </a>
                                <div class="list-group-item-secondary" style="background-color: #ffffff;">
                                    <a href="#" >
                                        <i class="fas fa-comments" style="color: #009e0f;"> </i>
                                        <strong  style="color: #000">Comentarios:&nbsp;&nbsp;${numComments}</strong>
                                    </a>
                                </div>
                                <div class="list-group-item-secondary" style="background-color: #ffffff;">
                                    <a href="#" >
                                        <i class="fas fa-users" style="color: #009e0f;"></i>
                                        <strong  style="color: #000">Visitas:&nbsp;&nbsp;140</strong>
                                    </a>
                                </div>
                            </div>
                        </div>  
                        <br><br>
                        <div class="list-group">
                            <a href="#" class="list-group-item active" style="background-color: #009e0f;">
                                <i class="fas fa-cog" style="color: #ffffff"></i>
                                <strong>Control del sistema</strong>
                            </a>
                            <div class="list-group-item">        
                                <a href="contenManagement">
                                    <i class="fas fa-user" style="color: #009e0f;"></i>
                                    <strong >&nbsp;Editar contenido</strong>
                                </a>
                                <div class="list-group-item-secondary" style="background-color: #ffffff;">
                                    <a href="#" >
                                        <i class="fas fa-comments" style="color: #009e0f;"> </i>
                                        <strong >Editar foro</strong>
                                    </a>
                                </div>

                            </div>
                        </div>  
                        <br>
                    </div>
                    <div class="col-md-9">
                        <i class="fas fa-pencil-ruler" style="color: #009e0f;" id="big_login"></i>
                        <br>
                        <c:if test="${edit != null}">
                            <div>
                                <h4 class="section-content-title pb-3 align-left mbr-fonts-style display-5"  style="text-align: center;color: #000">
                                    <b>${edit}<br></b></h4>
                            </div>
                        </c:if> 
                        <br>
                        <h2 style="text-align: center;">Usuarios registrados</h2>
                        <br>
                        <table class="table table-bordered">
                            <tr align="center" id="Title_Users" >
                                <td align="center"><strong>Id</strong></td>
                                <td align="center"><strong>Usuario</strong></td>
                                <td align="center"><strong>Email</strong></td>
                                <td align="center"><strong>Password</strong></td>
                                <td align="center"><strong>Control</strong></td>

                            </tr>
                            <c:forEach items="${usuarios}" var="algo">
                                <tr>
                                    <td align="center"><strong>${algo.getId()}</strong></td>
                                    <td align="center">${algo.getUser()}</td>
                                    <td align="center">${algo.getEmail()}</td>
                                    <td align="center">${algo.getPassword()}</td>
                                    <td aling="center">
                                        <a class = "colum_" style="color: black" href="editUser?algox=${algo.getId()}"><strong>update</strong></a>
                                        <a class = "colum_" style="color: black" onclick="mensajeEliminado()" href="eliminarUsuario?algox=${algo.getId()}"><strong>delete</strong></a>
                                    </td>
                                </tr>
                            </c:forEach>         
                        </table>
                    </div>
                </div>
            </div>
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
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>-->



    </body>
</html>