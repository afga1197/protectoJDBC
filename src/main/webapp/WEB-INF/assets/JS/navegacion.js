/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function carga() {
    $(document).ready(function (e) {
        $('#hydrologicalDisasters').click(function () {
            $('#contenido').load("hydrologicalDisasters");
        });

        $('#meteorologicalDisasters').click(function () {
            $('#contenido').load("meteorologicalDisasters");
        });

        $('#geophysicalDisasters').click(function () {
            $('#contenido').load("geophysicalDisasters");
        });

        $('#biologicalDisasters').click(function () {
            $('#contenido').load("biologicalDisasters");
        });
        
        $('#naturalAct').click(function () {
            $('#contenido').load("naturalAct");
        });
              
    });
}

