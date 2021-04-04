$.ajax({
	url:"/admin/get-data",
	success: function(data)
	{
		var month = JSON.parse(data).month;
		var revenue = JSON.parse(data).revenue;
		vehinh(month, revenue);
	}
})



function vehinh(month, revenue)
{
	$(function () {
	    $('#container').highcharts({
	        title: {
	            text: 'Doanh Thu Cửa hàng 2020',
	            x: -20 //center
	        },
	        subtitle: {
	            text: 'MaRuMaRu.com.vn',
	            
	            x: -20
	        },
	        
	        xAxis: {
	            categories: month
	        },
	        yAxis: {
	            title: {
	                text: 'DOLAR ($)'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: '$'
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	           
	            data: revenue
	        }]
	    });
	});

}