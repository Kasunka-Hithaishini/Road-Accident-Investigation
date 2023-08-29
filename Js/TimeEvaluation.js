google.charts.load('current', { 'packages': ['bar'] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Date', 'Car', 'Motorbike', 'Bus', 'Van', 'Truck', 'Autorikshaw','Train'],
        ['2021/04', 1, 0, 0, 0, 0, 0, 0],
        ['2021/01', 1, 0, 0, 0, 0, 0, 0],
        ['2022/02', 2, 0, 1, 1, 0, 1, 0],
        ['2022/03', 1, 0, 1, 1, 0, 0, 1],
        ['2022/04', 3, 6, 2, 2, 4, 0, 1],
        ['2022/05', 0, 0, 0, 1, 0, 0, 0]
    ]);

    var options = {
        chart: {
            title: 'Time Evaluation',
            subtitle: 'Car, Motorbike, Bus, Van, Truck, Autorikshaw,Train',
        }
    };

    var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

    chart.draw(data, google.charts.Bar.convertOptions(options));
}