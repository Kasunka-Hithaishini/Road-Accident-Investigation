google.charts.load('current', { packages: ['corechart', 'bar'] });
google.charts.setOnLoadCallback(drawMultSeries);

function drawMultSeries() {
    var data = google.visualization.arrayToDataTable([
        ['Vehicle type', 'Male Drivers', 'Female Drivers'],
        ['Car', 3, 3],
        ['Mortorbike', 6, 2],
        ['Truck', 3, 1],
        ['Van', 2, 1],
        ['Autorikshow', 1, 0],
        ['Bus', 4, 0]
    ]);

    var options = {
        title: 'Recorded Vehicle Types',
        chartArea: { width: '50%' },
        hAxis: {
            title: 'Number of vehicles',
            minValue: 0
        },
        vAxis: {
            title: 'Vehicle types'
        }
    };

    var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}