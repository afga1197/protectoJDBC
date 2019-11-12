/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

document.write('<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js"></script>');
document.write('<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>');

function mensajeErrorCorreo(){
    
    $(document).ready(function(){
        swal ( 'El correo digitado no es valido !' ,  ' ' ,  'error' ); 
    });
}

function mensajeReCaptcha(){
    
    $(document).ready(function(){
        swal ( '¿Eres un robot? !' ,  ' ' ,  'error' ); 
    });
}

function mensajeEditado(){
    $(document).ready(function(){
        swal ( 'Se edito la informacion del usuario correctamente !' ,  ' ' ,  'success' ); 
    });
}

function mensajeEliminado(){
    $(document).ready(function(){
        swal ( 'Se elimino el usuario del sistema !' ,  ' ' ,  'success' ); 
    });
}

function mensajeRegistro(){
    $(document).ready(function(){
        swal ( 'Se registro el usuario en el sistema !' ,  ' ' ,  'success' ); 
    });
    setTimeout(3000);
}

function mensajeNoRegistro(){
    $(document).ready(function(){
        swal ( 'El usuario ya esta registrado en la base de datos !' ,  ' ' ,  'error' ); 
    });
}

function mensajeEditarSeccion(){
    $(document).ready(function(){
        swal ( 'Se edito la seccion !' ,  ' ' ,  'success' ); 
    });
    sleep(20000);
    return true;
}

function isRobot(){
    var response = grecaptcha.getResponse();
    if(response.length == 0){
        mensajeReCaptcha();
        return false;
    }else{
        return true;
    }
}