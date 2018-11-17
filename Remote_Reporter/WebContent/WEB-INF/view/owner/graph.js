  var hdxdata = document.getElementsByName("hdxdata");
  var hdydata = document.getElementsByName("hdydata");
  var xdata=[];
  var ydata=[];
  
  for(var i=0;i<hdxdata.length;i++)
	{
	xdata.push(hdxdata[i].value);
	ydata.push(hdydata[i].value);
	}
  var data = [{
  x: xdata,
  y: ydata,
  type: 'bar'
}];

Plotly.newPlot('myDiv', data); 