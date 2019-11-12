/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//pie
var ctxP = document.getElementById("pieChart").getContext('2d');
var myPieChart = new Chart(ctxP, {
    type: 'pie',
    data: {
        labels: ["D. hidrologico", "D. metereologico ", "D. geofisico", "D. biologico", ],
        datasets: [{
                data: [50, 10, 25, 15],
                backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1"],
                hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5"]
            }]
    },
    options: {
        responsive: true
    }
});


