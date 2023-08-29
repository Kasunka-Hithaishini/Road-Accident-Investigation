google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ['Task', 'Hours per Day'],
        ['Over speeding', 14],
        ['Drunken driving', 6],
        ['Red light jumping', 7]
    ]);

    var options = {
        title: 'Course of Recent Accidents',
        is3D: true,
    };

    var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
    chart.draw(data, options);
}