

var randomScalingFactor = function () {
    return Math.round(Math.random() * 100);
};

window.onload = function () {


    var ctx = document.getElementById("canvas").getContext("2d");
    window.myBar = new Chart(ctx).Bar(barChartData, {
        responsive: true
    });
//    var ctx = document.getElementById("chart-area").getContext("2d");
//    window.myPolarArea = new Chart(ctx).PolarArea(polarData, {
//        responsive: true
//    });

    getCountData();

};



function getCountData() {

    var rootURL = '/rest/employeeservices/custrmaroparation/cus_count';

    $.ajax({
        type: 'GET',
        url: rootURL,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            //alert(data);
            $('#t-cars').html(data.vehicled);
            $('#t-cus').html(data.cus);
            $('#t-sup').html(data.suplire);

            var polarData = countobjectToArray(data);

            var ctx = document.getElementById("chart-area").getContext("2d");
            window.myPolarArea = new Chart(ctx).PolarArea(polarData, {
                responsive: true
            });



        },
        error: function (jqXHR, textStatus, errorThrown) {

            console.log('Error in loding chart data : ' + errorThrown);
        }
    });
}

function countobjectToArray(data) {


    var setLable = [
        {
            value: data.cus,
            color: "#F7464A",
            highlight: "#FF5A5E",
            label: "Customers"
        },
        {
            value: data.servicessup,
            color: "#46BFBD",
            highlight: "#5AD3D1",
            label: "Service Providers"
        },
        {
            value: data.suplire,
            color: "#FDB45C",
            highlight: "#FFC870",
            label: "Suppliers"
        },
        {
            value: data.vehicled,
            color: "#FDB45C",
            highlight: "#FFC170",
            label: "Vehicles"
        }];

//
//    var array = $.map(data, function (value, index) {
//
//        return [value];
//    });

//            var theTypeIs = Object.keys(data)[0];
//            alert(theTypeIs);

    return setLable;

}

var polarData = [
    {
        value: 300,
        color: "#F7464A",
        highlight: "#FF5A5E",
        label: "Red"
    },
    {
        value: 50,
        color: "#46BFBD",
        highlight: "#5AD3D1",
        label: "Green"
    },
    {
        value: 100,
        color: "#FDB45C",
        highlight: "#FFC870",
        label: "Yellow"
    },
    {
        value: 40,
        color: "#949FB1",
        highlight: "#A8B3C5",
        label: "Grey"
    },
    {
        value: 120,
        color: "#4D5360",
        highlight: "#616774",
        label: "Dark Grey"
    }

];

var barChartData = {
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    datasets: [
        {
            fillColor: "rgba(151,187,205,0.5)",
            strokeColor: "rgba(151,187,205,0.8)",
            highlightFill: "rgba(151,187,205,0.75)",
            highlightStroke: "rgba(151,187,205,1)",
            data: [5, 59, 80, 81, 56, 55, 1000]
        }
    ]

};

