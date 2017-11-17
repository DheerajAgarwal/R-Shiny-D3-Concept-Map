Shiny.addCustomMessageHandler("jsondata",
  function(message){
    var flare = message; // recieve json data as a message from R
    d3.select("#tempChartID").remove(); // remove previous chart before next event
	  d3.select("#tempElementID").remove(); // remove previous chart before next event
	  var plot = new ConceptMap("plot", "plot-info", flare); // plot the graphs and send to div tags.
  }
);
