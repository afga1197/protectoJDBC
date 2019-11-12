/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

document.write('<script src="assets/JS/mensajes.js"></script>');

function validarEdit(){
    var user = document.forms["FaddEdit"]["txtUser"].value;
    var pass = document.forms["FaddEdit"]["txtPass"].value;
    var correo = document.forms["FaddEdit"]["txtEmail"].value;
    
    emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    letras=/^[A-Za-z\_\-\.\s\xF1\xD1]+$/;  
    
    if(!emailRegex.test(correo)){
        mensajeErrorCorreo();
        return false;
    }else{
        return true;
    } 
}
