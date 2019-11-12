/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ctxR = document.getElementById("radarChart").getContext('2d');
var myRadarChart = new Chart(ctxR, {
    type: 'radar',
    data: {
        labels: ["D. hidrologico", "D. metereologicos", "D. geofisicos", "D. biologicos"],
        datasets: [{
                label: "Cantidad de desastres naturales 2010-2017",
                data: [14594, 13749, 15695, 12304 ],
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