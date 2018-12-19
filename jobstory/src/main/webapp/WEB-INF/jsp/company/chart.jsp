<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
</head>
<body>
<div style="width:30%; margin:20px ">
                        <h2 style="float: left;margin-left: 25%;">지원자 성별</h2>
                        <div>
                            <canvas id="myChart" width="100%" height="100%"></canvas>
                        </div>
         </div>
         <div style="width: 30%;margin-top: -36%;margin-left: 34%;">
                        <h2 style="float: left;margin-left: 28%;margin-bottom: -2px;margin-top: -4px;">지원자 나이</h2>
                        <div style="margin-top:10%">
                            <canvas id="myChart2" width="100%" height="100%"></canvas>
                        </div>
         </div>
         <div style="width: 30%;margin-left: 68%;margin-top: -38%;">
                        <h2 style="float: left;margin-left: 39%;margin-bottom: -2px;margin-top: -4px;">지원자 학력</h2>
                        <div style="margin-top:10%">
                            <canvas id="myChart3" width="100%" height="100%"></canvas>
                        </div>
         </div>

<script>
/* 그래프 스크립트*/

/*지원자 성별*/
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ["남자", "여자"],
        datasets: [{
            label: '# of Votes',
            data: ["${man}", "${woman}"],
            backgroundColor: [
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 99, 132, 0.2)'
            ],
            borderColor: [
                'rgba(54, 162, 235, 1)',
                'rgba(255,99,132,1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
    	responsive: true,
		legend: {
			position: 'right',
		},
    	cutoutPercentage:50
    }
});

console.log("10대:"+"${ten}")
console.log("20대:"+"${twt}")
console.log("30대:"+"${trd}")
console.log("40대:"+"${fort}")
/*지원자 나이*/
var ctx = document.getElementById("myChart2");
var myChart = new Chart(ctx, {
    type: 'polarArea',
    data: {
        labels: ["10대", "20대", "30대", "40대"],
        datasets: [{
            label: '# of Votes',
            data: ["${ten}","${twt}","${trd}","${fort}"],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
		responsive: true,
		legend: {
			position: 'right',
		},
		title: {
			display: true,
		},
		scale: {
			ticks: {
				beginAtZero: true
			},
			reverse: false
		},
		animation: {
			animateRotate: false,
			animateScale: true
		}
	}
});

console.log("고등학교:${high}")
console.log("2년제:${second}")
console.log("4년제:${fouth}")
console.log("석박사:${master}")
/*지원자 학력*/
var ctx = document.getElementById("myChart3").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["고등학교 졸업", "대학교졸업(2년)", "대학교졸업(4년)", "석·박사졸업"],
        datasets: [{
            label: '고등학교 졸업',
            data: ["${high}", "${second}","${fouth}", "${master}"],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',

            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    
    }
});


</script>
</body>
</html>