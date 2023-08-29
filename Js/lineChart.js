google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Vehicle_type', 'Male', 'Female'],
        ['Car', 3, 3],
        ['Truck', 3, 1],
        ['Motorbike', 6, 2],
        ['Bus', 4, 0],
        ['Van', 2, 1],
        ['Autorikshow', 1, 0]
    ]);

    var options = {
        title: 'Accident heirarchy between Male & Female Parties',
        curveType: 'function',
        legend: { position: 'bottom' }
    };

    var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

    chart.draw(data, options);
}