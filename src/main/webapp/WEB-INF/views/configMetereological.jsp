<%-- 
    Document   : configMetereologico
    Created on : 30/10/2019, 07:35:48 PM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Gestión D. metereológicos</title>
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
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    </head>
    <body>
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
                            <a class="nav-link link text-black display-4" href="login">
                                <i class="fas fa-user" width="30px" height="30px" style="color: #009e0f"></i>
                                <strong>&nbsp;Login</strong> 
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link link text-black display-4" href="control">
                                <i class="fas fa-pencil-ruler" width="30px" height="30px" style="color: #009e0f"></i>
                                <strong>&nbsp;Control usuarios</strong> 
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </section>

        <br><br><br><br><br>
        <i><hr style="color: grey" size="20" hidden /></i>

        <div class="container" id="main_title">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2"  style="text-align: center">
                <b>&nbsp;&nbsp;&nbsp;Gestión modulo D. Hidrológicos<br></b></h2>
        </div>
        <br><br>
        <div class="container" id="main_title">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2" >
                <b>&nbsp;&nbsp;&nbsp;Sección 1<br></b></h2>
        </div>
        
        <div class="container">
            <form:form action="modificarInfoSeccion" method="post" modelAttribute="seccion" name="FEdit"  >
               <div class="col-md-6  form-group"  id="TextF">
                    <h4 class="mbr-title pt-2 mbr-fonts-style display-5">
                    <b>Titulo<br></b></h4>
                    <form:input id="txtTitulo" path="Titulo" placeholder="Titulo" value="${Secciones[0].getTitulo()}" required="required" class="form-control input display-7" /> 
                </div>

                <form:input path="ID" type="hidden" name="txtID" value="${Secciones[0].getID()}"/>
                <form:input path="Nombre" type="hidden" name="txtNombre" value="${Secciones[0].getNombre()}"/>
                <form:input path="Modulo_ID" type="hidden" name="txtModuloID" value="${Secciones[0].getModulo_ID()}"/>
                <form:input path="Numero" type="hidden" name="txtNumero" value="${Secciones[0].getNumero()}"/>
                <br><br><br><br>
                <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
            </form:form>
        </div>
        
         <section class="mbr-section content7 cid-ruNvXuN71m" id="fist_cont">
            <div class="container">
                <div class="media-container-row">
                    <div class="col-12 col-md-12">
                        <div class="media-container-row">
                            <div class="media-content">
                                <div class="mbr-section-text">
                                    <form:form action="modificarInfoCuadro" method="post" modelAttribute="cuadro" name="FE_1"  >
                                        <div class="col-md-6  form-group"  id="TextF">
                                            <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                                <b>Imagen<br></b></h4>  
                                            <form:input path="Imagen" type="text" class="form-control input display-7" id="center_TA"  name="txtImagen" value="${Cuadros[0].getImagen()}"/>
                                            <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                                <b>Texto nuevo</b></h4><p>"Si no desea modificar copie el texto actual"</p>  
                                                <form:textarea id="center_TA" class="form-control"  rows="7" path="Texto" type="text" name="txtTexto" required="true" />
                                        </div>
                                        <form:input path="ID" type="hidden" name="txtID" value="${Cuadros[0].getID()}"/>
                                        <form:input path="Seccion_ID" type="hidden" name="txtSeccion" value="${Cuadros[0].getSeccion_ID()}"/>
                                        <form:input path="Subtitulo" type="hidden" name="txtSubtitulo" value="${Cuadros[0].getSubtitulo()}"/>
                                        <form:input path="Video" type="hidden" name="txtVideo" value="${Cuadros[0].getVideo()}"/>
                                        <form:input path="Grafica" type="hidden" name="txtGrafica" value="${Cuadros[0].getGrafica()}"/>
                                        <form:input path="Modulo_ID" type="hidden" name="txtModulo_ID" value="${Cuadros[0].getModulo_ID()}"/>
                                        <span class="vspacer"></span><br><br>
                                        <button  type="submit" class="button_green" style="position: relative;top:320px;" ><strong>Modificar</strong></button><br><br>
                                    </form:form>
                                </div>
                            </div>
                            <div class="mbr-figure">
                                <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                <b>Texto Actual<br></b></h4>
                                <textarea class="form-control"  rows="7" id="center_TA">${Cuadros[0].getTexto()}</textarea>
                            </div>                             
                        </div>
                    </div>
                </div>
            </div>
            <i><hr style="color: grey" size="20" hidden /></i>
        </section>
        
        <br><br><br><br><br><br><br><br><br><br>
        <div class="container" id="main_title">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2" >
                <b>&nbsp;&nbsp;&nbsp;Sección 2<br></b></h2>
        </div>
        
        <div class="container">
            <form:form action="modificarInfoSeccion" method="post" modelAttribute="seccion" name="FEdit"  >
               <div class="col-md-6  form-group"  id="TextF">
                    <h4 class="mbr-title pt-2 mbr-fonts-style display-5">
                    <b>Titulo<br></b></h4>
                    <form:input id="txtTitulo" path="Titulo" placeholder="Titulo" value="${Secciones[1].getTitulo()}" required="required" class="form-control input display-7" /> 
                </div>

                <form:input path="ID" type="hidden" name="txtID" value="${Secciones[1].getID()}"/>
                <form:input path="Nombre" type="hidden" name="txtNombre" value="${Secciones[1].getNombre()}"/>
                <form:input path="Modulo_ID" type="hidden" name="txtModuloID" value="${Secciones[1].getModulo_ID()}"/>
                <form:input path="Numero" type="hidden" name="txtNumero" value="${Secciones[1].getNumero()}"/>
                <br><br><br><br>
                <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
            </form:form>
        </div>
        <br>
        <section  id="thrid_section">
            <div class="container">
                <div class="media-container-row">
                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <form:form action="modificarInfoCuadro" method="post" modelAttribute="cuadro" name="FE_1"  >
                            <div class="card-img pb-3">
                                <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                <b>Video<br></b></h4>  
                                <form:input path="Video" type="text" class="form-control input display-7" id="center_TA"  name="txtVideo" value="${Cuadros[1].getVideo()}"/>
                            </div>
                            <div class="card-box">
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Subtitulo</h4>
                                <form:input path="Subtitulo" type="text" class="form-control input display-7" id="center_TA"  name="txtImagen" value="${Cuadros[1].getSubtitulo()}"/>
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Texto actual</h4>
                                <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" id="center_TA">${Cuadros[1].getTexto()}</textarea>
                                <span class="vspacer"></span>
                                <br>
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Nuevo texto</h4>
                                <p>"Si no desea modificar copie el texto actual"</p>  
                                <form:textarea id="center_TA" class="form-control"  rows="7" path="Texto" type="text" name="txtTexto" required="true" />
                            </div>
                            <br><br>
                            <form:input path="ID" type="hidden" name="txtID" value="${Cuadros[1].getID()}"/>
                            <form:input path="Seccion_ID" type="hidden" name="txtSec" value="${Cuadros[1].getSeccion_ID()}"/>
                            <form:input path="Imagen" type="hidden" name="txtImagen" value="${Cuadros[1].getImagen()}"/>
                            <form:input path="Grafica" type="hidden" name="txtGrafica" value="${Cuadros[1].getGrafica()}"/>
                            <form:input path="Modulo_ID" type="hidden" name="txtMod" value="${Cuadros[1].getModulo_ID()}"/>
                            <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
                        </form:form>                                
                    </div>

                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <form:form action="modificarInfoCuadro" method="post" modelAttribute="cuadro" name="FE_1"  >
                            <div class="card-img pb-3">
                                <div class="mbr-figure">
                                <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                <b>Video<br></b></h4>  
                                <form:input path="Video" type="text" class="form-control input display-7" id="center_TA"  name="txtVideo" value="${Cuadros[2].getVideo()}"/>
                                </div>                              
                            </div>
                            <div class="card-box">
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Subtitulo</h4>
                                <form:input path="Subtitulo" type="text" class="form-control input display-7" id="center_TA"  name="txtSub" value="${Cuadros[2].getSubtitulo()}"/>
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Texto actual</h4>
                                <textarea class="form-control"  rows="7" id="center_TA">${Cuadros[2].getTexto()}</textarea>
                                <span class="vspacer"></span>
                                <br>
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Nuevo texto</h4>
                                <p>"Si no desea modificar copie el texto actual"</p>  
                                <form:textarea id="center_TA" class="form-control"  rows="7" path="Texto" type="text" name="txtTexto" required="true" />   
                                <span class="vspacer"></span>
                            </div>
                            <br><br>
                            <form:input path="ID" type="hidden" name="txtID" value="${Cuadros[2].getID()}"/>
                            <form:input path="Seccion_ID" type="hidden" name="txtSec" value="${Cuadros[2].getSeccion_ID()}"/>
                            <form:input path="Imagen" type="hidden" name="txtVideo" value="${Cuadros[2].getImagen()}"/>
                            <form:input path="Grafica" type="hidden" name="txtGrafica" value="${Cuadros[2].getGrafica()}"/>
                            <form:input path="Modulo_ID" type="hidden" name="txtMod" value="${Cuadros[2].getModulo_ID()}"/>
                            <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
                            </form:form>
                    </div>

                    <div class="card p-3 col-12 col-md-6 col-lg-4">
                        <form:form action="modificarInfoCuadro" method="post" modelAttribute="cuadro" name="FE_1"  >
                            <div class="card-img pb-3">
                                <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                <b>Video<br></b></h4>  
                                <form:input path="Video" type="text" class="form-control input display-7" id="center_TA"  name="txtVideo" value="${Cuadros[3].getVideo()}"/>
                            </div>
                            <div class="card-box">
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Subtitulo</h4>
                                <form:input path="Subtitulo" type="text" class="form-control input display-7" id="center_TA"  name="txtImagen" value="${Cuadros[3].getSubtitulo()}"/>
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Texto actual</h4>
                                <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" id="center_TA">${Cuadros[3].getTexto()}</textarea>
                                <span class="vspacer"></span>
                                <br>
                                <h4 class="card-title py-3 mbr-fonts-style display-5" style="text-align: center" >Nuevo texto</h4>
                                <p>"Si no desea modificar copie el texto actual"</p>  
                                <form:textarea id="center_TA" class="form-control"  rows="7" path="Texto" type="text" name="txtTexto" required="true" />   
                                <span class="vspacer"></span>
                            </div>
                            <br><br>
                            <form:input path="ID" type="hidden" name="txtID" value="${Cuadros[3].getID()}"/>
                            <form:input path="Seccion_ID" type="hidden" name="txtSec" value="${Cuadros[3].getSeccion_ID()}"/>
                            <form:input path="Imagen" type="hidden" name="txtVideo" value="${Cuadros[3].getImagen()}"/>
                            <form:input path="Grafica" type="hidden" name="txtGrafica" value="${Cuadros[3].getGrafica()}"/>
                            <form:input path="Modulo_ID" type="hidden" name="txtMod" value="${Cuadros[3].getModulo_ID()}"/>
                            <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
                        </form:form>
                    </div>
                </div>
            </div>
            <i><hr style="color: gray" /></i>
        </section>

        <div class="container" id="main_title">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2" >
                <b>&nbsp;&nbsp;&nbsp;Sección 3<br></b></h2>
        </div>
        
        <div class="container">
            <form:form action="modificarInfoSeccion" method="post" modelAttribute="seccion" name="FEdit"  >
               <div class="col-md-6  form-group"  id="TextF">
                   <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                    <b>Titulo<br></b></h4>
                    <form:input id="txtTitulo" path="Titulo" placeholder="Titulo" value="${Secciones[2].getTitulo()}" required="required" class="form-control input display-7" /> 
                </div>

                <form:input path="ID" type="hidden" name="txtID" value="${Secciones[2].getID()}"/>
                <form:input path="Nombre" type="hidden" name="txtNombre" value="${Secciones[2].getNombre()}"/>
                <form:input path="Modulo_ID" type="hidden" name="txtModuloID" value="${Secciones[2].getModulo_ID()}"/>
                <form:input path="Numero" type="hidden" name="txtNumero" value="${Secciones[2].getNumero()}"/>
                <br><br><br><br>
                <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
            </form:form>
        </div>
        <br>
        
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form:form action="modificarInfoCuadro" method="post" modelAttribute="cuadro" name="FE_1"  >
                                <div class="card-box">
                                    <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                    <b>Grafica<br></b></h4>
                                    <form:input path="Grafica" type="text" class="form-control input display-7" id="center_TA"  name="txtGrafica" value="${Cuadros[4].getGrafica()}"/>
                                </div>
                                <br><br>
                                <form:input path="ID" type="hidden" name="txtID" value="${Cuadros[4].getID()}"/>
                                <form:input path="Seccion_ID" type="hidden" name="txtSec" value="${Cuadros[4].getSeccion_ID()}"/>
                                <form:input path="Imagen" type="hidden" name="txtImagen" value="${Cuadros[4].getImagen()}"/>
                                <form:input path="Video" type="hidden" name="txtVideo" value="${Cuadros[4].getVideo()}"/>
                                <form:input path="Texto" type="hidden" name="txtGrafica" value="${Cuadros[4].getTexto()}"/>
                                <form:input path="Modulo_ID" type="hidden" name="txtMod" value="${Cuadros[4].getModulo_ID()}"/>
                                <form:input path="Subtitulo" type="hidden" name="txtSub" value="${Cuadros[4].getSubtitulo()}"/>
                                <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
                            </form:form>  
                            
                        </div>
                    </div>
                </div>
            </div>
                <i><hr style="color: gray" /></i>
        </div>
        
         <br><br>
        <div class="container" id="main_title">
            <h2 class="mbr-title pt-2 mbr-fonts-style display-2" >
                <b>&nbsp;&nbsp;&nbsp;Sección 4<br></b></h2>
        </div>
        
        <div class="container">
            <form:form action="modificarInfoSeccion" method="post" modelAttribute="seccion" name="FEdit"  >
               <div class="col-md-6  form-group"  id="TextF">
                    <h4 class="mbr-title pt-2 mbr-fonts-style display-5">
                    <b>Titulo<br></b></h4>
                    <form:input id="txtTitulo" path="Titulo" placeholder="Titulo" value="${Secciones[3].getTitulo()}" required="required" class="form-control input display-7" /> 
                </div>

                <form:input path="ID" type="hidden" name="txtID" value="${Secciones[3].getID()}"/>
                <form:input path="Nombre" type="hidden" name="txtNombre" value="${Secciones[3].getNombre()}"/>
                <form:input path="Modulo_ID" type="hidden" name="txtModuloID" value="${Secciones[3].getModulo_ID()}"/>
                <form:input path="Numero" type="hidden" name="txtNumero" value="${Secciones[3].getNumero()}"/>
                <br><br><br><br>
                <button  type="submit" class="button_green" ><strong>Modificar</strong></button><br><br>
            </form:form>
        </div>
  
        <section class="mbr-section content7 cid-ruNvXuN71m" id="fist_cont">
            <div class="container">
                <div class="media-container-row">
                    <div class="col-12 col-md-12">
                        <div class="media-container-row">
                            <div class="media-content">
                                <div class="mbr-section-text">
                                    <form:form action="modificarInfoCuadro" method="post" modelAttribute="cuadro" name="FE_1"  >
                                        <div class="col-md-6  form-group"  id="TextF">
                                            <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                                <b>Imagen<br></b></h4>  
                                            <form:input path="Imagen" type="text" class="form-control input display-7" id="center_TA"  name="txtImagen" value="${Cuadros[5].getImagen()}"/>
                                            <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                                <b>Texto nuevo</b></h4><p>"Si no desea modificar copie el texto actual"</p>  
                                                <form:textarea id="center_TA" class="form-control"  rows="7" path="Texto" type="text" name="txtTexto" required="true" />
                                        </div>
                                        <form:input path="ID" type="hidden" name="txtID" value="${Cuadros[5].getID()}"/>
                                        <form:input path="Seccion_ID" type="hidden" name="txtSeccion" value="${Cuadros[5].getSeccion_ID()}"/>
                                        <form:input path="Subtitulo" type="hidden" name="txtSubtitulo" value="${Cuadros[5].getSubtitulo()}"/>
                                        <form:input path="Video" type="hidden" name="txtVideo" value="${Cuadros[5].getVideo()}"/>
                                        <form:input path="Grafica" type="hidden" name="txtGrafica" value="${Cuadros[5].getGrafica()}"/>
                                        <form:input path="Modulo_ID" type="hidden" name="txtModulo_ID" value="${Cuadros[5].getModulo_ID()}"/>
                                        <span class="vspacer"></span><br><br>
                                        <button  type="submit" class="button_green" style="position: relative;top:320px;" ><strong>Modificar</strong></button><br><br>
                                    </form:form>
                                </div>
                            </div>
                            <div class="mbr-figure">
                                <h4 class="mbr-title pt-2 mbr-fonts-style display-5" style="text-align: center;">
                                <b>Texto Actual<br></b></h4>
                                <textarea class="form-control" id="exampleFormControlTextarea3" rows="7" style="width: 300px;display: block; margin-left: auto; margin-right: auto;">${Cuadros[5].getTexto()}</textarea>
                            </div>                             
                        </div>
                    </div>
                </div>
            </div>
            <i><hr style="color: grey" size="20" hidden /></i>
        </section>
        
        
        <br><br><br><br><br><br><br><br>
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
