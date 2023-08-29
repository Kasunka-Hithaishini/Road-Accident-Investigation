google.charts.load('current', { 'packages': ['corechart'] });
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
    // Some raw data (not necessarily accurate)
    var data = google.visualization.arrayToDataTable([
        ['Year', 'Fatal', 'Grievous', 'Non-Grievous', 'Damage Only', 'Total'],
        ['2000', 809, 832, 6156, 7494, 15289],
        ['2001', 815, 1028, 6831, 9605, 18279],
        ['2002', 852, 1100, 7121, 10814, 19887],
        ['2003', 1036, 1297, 7899, 12299, 22531],
        ['2004', 1256, 1302, 7501, 14467, 24526],
        ['2005', 1221, 1231, 7316, 17408, 27176],
        ['2006', 1251, 1399, 8608, 20595, 31853],
        ['2007', 1163, 1523, 8566, 22034, 33286],
        ['2008', 1363, 1346, 7933, 22378, 33020],
        ['2009', 1452, 1285, 7731, 21220, 31688],
        ['2010', 1712, 1701, 9460, 21582, 34455],
        ['2011', 1253, 1897, 9683, 21303, 34136],
        ['2012', 1300, 2110, 10384, 23975, 37769],
        ['2013', 1342, 2297, 11685, 26131, 41455],
        ['2014', 1412, 2552, 11990, 27853, 43807],
        ['2015', 1379, 2586, 12231, 27853, 44049],
        ['2016', 1558, 2613, 11508, 32988, 48667]
    ]);

    var options = {
        title: 'Country Recorded Accidents for years in 2000-2016',
        vAxis: { title: 'Cups' },
        hAxis: { title: 'Year' },
        seriesType: 'bars',
        series: { 5: { type: 'line' } }
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
}