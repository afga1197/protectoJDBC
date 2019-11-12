/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var ctxBc = document.getElementById('bubbleChart').getContext('2d');
var bubbleChart = new Chart(ctxBc, {
    type: 'bubble',
    data: {
        datasets: [{
                label: 'D. hidrologicos',
                data: [{
                        x: 5,
                        y: 7,
                        r: 9
                    }],
                backgroundColor: "#ff6384",
                hoverBackgroundColor: "#ff6384"
            }, {
                label: 'D. metereologicos',
                data: [{
                        x: 5,
                        y: 7,
                        r: 10
                    }],
                backgroundColor: "#44e4ee",
                hoverBackgroundColor: "#44e4ee"
            }, {
                label: 'D. geofisicos',
                data: [{
                        x: 6,
                        y: 7,
                        r: 10
                    }],
                backgroundColor: "#62088A",
                hoverBackgroundColor: "#62088A"
            },
            {
                label: 'D. biologicos',
                data: [{
                        x: 4,
                        y: 7,
                        r: 13
                    }],
                backgroundColor: "rgba(54, 162, 235, 0.2)",
                hoverBackgroundColor: "rgba(54, 162, 235, 0.2)"
            }
        ]
    }
})