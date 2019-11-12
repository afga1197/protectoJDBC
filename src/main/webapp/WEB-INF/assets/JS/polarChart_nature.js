/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ctxPA = document.getElementById("polarChart").getContext('2d');
var myPolarChart = new Chart(ctxPA, {
    type: 'polarArea',
    data: {
        labels: ["D. hidrologicos", "D. metereologicos", "D. geofisicos", "D. biologicos"],
        datasets: [{
                data: [300, 50, 100, 40],
                backgroundColor: ["rgba(219, 0, 0, 0.1)", "rgba(0, 165, 2, 0.1)", "rgba(255, 195, 15, 0.2)",
                    "rgba(55, 59, 66, 0.1)"
                ],
                hoverBackgroundColor: ["rgba(219, 0, 0, 0.2)", "rgba(0, 165, 2, 0.2)",
                    "rgba(255, 195, 15, 0.3)", "rgba(55, 59, 66, 0.1)"
                ]
            }]
    },
    options: {
        responsive: true
    }
});
