<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
<div id="chart_div"></div>

<div id="ph_div"></div>

<script>
google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawBasic);
google.charts.setOnLoadCallback(drawpH);

function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'X');
      data.addColumn('number', 'Suhu');

      data.addRows([
        @foreach($data['Suhu'] as $index => $value)
            [ {{$index}}, {{$value}} ],
        @endforeach
      ]);

      var options = {
        hAxis: {
          title: 'Time'
        },
        vAxis: {
          title: 'Suhu'
        }
      };

      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    }

    function drawpH() {

    var data1 = new google.visualization.DataTable();
      data1.addColumn('number', 'X');
      data1.addColumn('number', 'Suhu');

      data1.addRows([
        @foreach($data['pH'] as $index => $value)
            [ {{$index}}, {{$value}} ],
        @endforeach
      ]);

      var options1 = {
        hAxis: {
          title: 'Time'
        },
        vAxis: {
          title: 'pH'
        }
      };

      var chart1 = new google.visualization.LineChart(document.getElementById('ph_div'));

      chart1.draw(data1, options1);
    }
    </script>
</body>
</html>