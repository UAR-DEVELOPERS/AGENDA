<%-- 
    Document   : report
    Created on : Aug 16, 2018, 5:14:03 AM
    Author     : saintrec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script>
    $(document).ready(function () {
        var ctx = $("#line-chartcanvas");

        //line chart data
        var data = {
            labels: ["match1", "match2", "match3", "match4", "match5"],
            datasets: [
                {
                    label: "Consejos C",
                    data: [10, 50, 25, 70, 40],
                    backgroundColor: "blue",
                    borderColor: "lightblue",
                    fill: false,
                    lineTension: 0,
                    radius: 5
                },
                {
                    label: "Defensas G",
                    data: [20, 35, 40, 60, 50],
                    backgroundColor: "green",
                    borderColor: "lightgreen",
                    fill: false,
                    lineTension: 0,
                    radius: 5
                }
            ]
        };

        //options
        var options = {
            responsive: true,
            title: {
                display: true,
                position: "top",
                text: "Reportes Citas",
                fontSize: 18,
                fontColor: "#111"
            },
            legend: {
                display: true,
                position: "bottom",
                labels: {
                    fontColor: "#333",
                    fontSize: 16
                }
            }
        };

        //create Chart class object
        var chart = new Chart(ctx, {
            type: "line",
            data: data,
            options: options
        });
    });
</script>
<div class="container">
    <div class="chart-container">
        <canvas id="line-chartcanvas"></canvas>
    </div> 
</div>


