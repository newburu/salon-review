window.makeChart = function(id, labels, myData, avgData) {
    const data = {
        labels: labels,
        datasets: [{
            label: '評価',
            data: myData,
            fill: true,
            backgroundColor: 'rgba(255, 99, 132, 0.2)',
            borderColor: 'rgb(255, 99, 132)',
            pointBackgroundColor: 'rgb(255, 99, 132)',
            pointBorderColor: '#fff',
            pointHoverBackgroundColor: '#fff',
            pointHoverBorderColor: 'rgb(255, 99, 132)'
        }, {
            label: '平均',
            data: avgData,
            fill: true,
            backgroundColor: 'rgba(54, 162, 235, 0.2)',
            borderColor: 'rgb(54, 162, 235)',
            pointBackgroundColor: 'rgb(54, 162, 235)',
            pointBorderColor: '#fff',
            pointHoverBackgroundColor: '#fff',
            pointHoverBorderColor: 'rgb(54, 162, 235)'
        }]
    };
    let chartCanvas = document.getElementById(id);
    let chart = new Chart(chartCanvas, {
        type: 'radar',
        data: data,
        options: {
            scales: {
                r: {
                    // スケール調整
                    suggestedMin: 1,
                    suggestedMax: 5
                }
            },
            plugins: {
                legend: {
                    display: false // 凡例を非表示
                },
            },
        },
    });
}