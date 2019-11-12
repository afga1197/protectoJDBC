/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var ctxL = document.getElementById("lineChart").getContext('2d');
var myLineChart = new Chart(ctxL, {
    type: 'line',
    data: {
        labels: ["2010", "2011", "2012", "2013", "2014", "2015", "2016","2017"],
        datasets: [{
                label: "Cantidad de desastres por anio",
                data: [30, 50, 40, 60, 50, 70, 60,80],
                backgroundColor: [
                    'rgba(54, 162, 235, 0.2)',
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)',
                ],
                borderWidth: 2
            }
        ]
    },
    options: {
        responsive: true
    }
});


