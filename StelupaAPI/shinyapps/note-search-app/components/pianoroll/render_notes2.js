svg.selectAll('g').remove();

var color_mixer = d3.scaleOrdinal(d3.schemeCategory10);

var margin = 0;
var width = 1100;
var height = 400;



var zoomingMainCanvas = function () {
  
                        
    svgComponentsOnRulerCanvas
       .attr("transform",
    'translate('+d3.event.transform.x +',0) scale('+d3.event.transform.k+',1)');
    
   svgRelativeOctaveCanvas
       .attr("transform",
    'translate(0,'+ d3.event.transform.y +') scale('+d3.event.transform.k+',1)');
    
      
    svgComponentsOnRulerNumbersCanvas
      .attr("transform", d3.event.transform);
    
    svgComponentsOnMainCanvas
      .attr("transform", d3.event.transform);
    
    svgComponentsOnKeyboardCanvas
        .attr("transform", d3.event.transform);
};


var zoomMainCanvas = d3.zoom()
                        .scaleExtent([0.4, 10])
                        .on("zoom", zoomingMainCanvas);

var menuItemborder = svg
    .attr('width', width)
    .attr('height', height)
    .style('border', '1px solid gray');

var mainCanvas = menuItemborder.append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .call(zoomMainCanvas);

var rulerCanvas = menuItemborder.append("svg")
    .attr("width", width)
    .attr("height", height)
    .append("g")
    .call(zoomMainCanvas);

var keyboardCanvas = menuItemborder.append("svg")
    .attr("width", width)
    .attr("height", height)
    .append("g")
    .call(zoomMainCanvas);

var rulerNumbersCanvas = menuItemborder.append("svg")
    .attr("width", width)
    .attr("height", height)
    .append("g")
    .call(zoomMainCanvas);
    
var relativeOctaveCanvas = menuItemborder.append("svg")
    .attr("width", width)
    .attr("height", height)
    .append("g")
    .call(zoomMainCanvas);

var svgComponentsOnMainCanvas = mainCanvas.append("g");
var svgComponentsOnRulerNumbersCanvas = rulerNumbersCanvas.append("g");
var svgComponentsOnKeyboardCanvas = keyboardCanvas.append("g");
var svgComponentsOnRulerCanvas = rulerCanvas.append("g");
var svgRelativeOctaveCanvas = relativeOctaveCanvas.append("g");


var canvas = svg;

// Create keyboard -----------------------------------------------------------
var keyboard = svgComponentsOnKeyboardCanvas;
var keyboardContainer = keyboard.append('g');
//                .attr('class', 'keyboard');







// Create shading for piano role ----------------------------------------------------


var shadingForPianoView = svgComponentsOnMainCanvas.append('g');

var axesShadesForPianoView = shadingForPianoView.selectAll('rect')
    .data(keyboardSpacingData)
    .enter().append("rect")
    .attr("x", function (d, i) {
        return -100;
    })
    .attr("y", function (d) {
        return d.y;
    })
    .attr("width", function (d, i) {
        return widthOfNoteInputArea;
    })
    .attr("height", 10)
    .attr("fill", function (d, i) {
        return d.axiscolor;
    });
       

var div = d3.select("body").append("div")	
    .attr("class", "tooltip")				
    .style("opacity", 0);


// add barlines
var barLines = svgComponentsOnKeyboardCanvas.append("g")
   .selectAll('line')
                 .data(data)
                 .enter()
                 .append("line")
                 .attr("x1", function (d, i) {
                     return d.starting_location_of_current_measure / d.divisions * 25;

                 })
                 .attr("y1", function (d, i) {
                     return 0;
                 })
                 .attr("x2", function (d, i) {
                     return d.starting_location_of_current_measure / d.divisions * 25;
                 })
                 .attr("y2", function (d, i) {
                     return 1070;
                 })
                 .attr('stroke-width', function (d, i) {
                     if (d.starting_location_of_current_measure % d.divisions === 0) {
                         return 0.9;
                     }        
                     else {
                         return 0;
                     }

                 })
                 .attr('stroke', function (d, i) {
                
                    return "#D3D3D3";

                 });

// add other vertical lines
var verticalLines =  svgComponentsOnKeyboardCanvas.append("g");
          
verticalLines.selectAll('line')
    .data(d3.range(0, 5000, 25))
    .enter()
    .append("line")
    .attr("x1", function (d, i) {
        
        return d;

    })
    .attr("y1", function (d, i) {
        return 0;
    })
    .attr("x2", function (d, i) {
        return d;
    })
    .attr("y2", function (d, i) {
        return 1070;
    })
    .attr('stroke-width', function (d, i) {
       
       return 0.4;

    })
    .attr('stroke', function (d, i) {
    
       return "black";

    });

// add horizontal lines
var horizontalLines = svgComponentsOnKeyboardCanvas.append("g")
    .selectAll('line')
        .data(d3.range(0, 890, 10))
        .enter()
        .append("line")
        .attr("x1", function (d, i) {
            return 0;

        })
        .attr("y1", function (d, i) {
            return d;
        })
        .attr("x2", function (d, i) {
            return 3000;
        })
        .attr("y2", function (d, i) {
            return d;
        })
        .attr('stroke-width', 0.4)
        .attr('stroke', 'black');


// Add note data
var notes = svgComponentsOnKeyboardCanvas.append("g");

notes.selectAll("rect")
    .data(data)
    .enter()
    .append("rect")
        .attr("height", 10)
        .attr("width", function (d, i) {

            var width = d.duration / d.divisions * 25;
            if (width < 0) {
                console.log(d);
            }
            return Math.max(width, 0);
        })
        .attr("x", function (d, i) {
            
            return (d.starting_location / d.divisions * 25);
        })
        .attr("y", function(d,i) {
            
            return 880 - (d.midi_number * 10);
        })
        .attr("fill", function(d,i) {
            return color_mixer(d.instrument);
        })
     .on("mouseover", function(d) {
       
       div.transition()
         .duration(200)
         .style("opacity", 1);
       div.html("<b>Note:</b>" + d.note_name + "<br/><b>Duration:</b>" + d.duration)
         .style("left", (d3.event.pageX) + "px")
         .style("top", (d3.event.pageY - 28) + "px");
       })
     .on("mouseout", function(d) {
       div.transition()
         .duration(500)
         .style("opacity", 0);
       });
 
 // Add text data on notes
notes.selectAll('text')
    .data(data)
    .enter()
    .append("text")
        .attr("x", function (d, i) {
            
            return (d.starting_location / d.divisions * 25);
        })
        .attr("y", function(d,i) {
            
            return (880 - (d.midi_number * 10));
        })
    .attr('fill', 'white')
    .text(function (d, i) {
        return d.note_name;
    });



// Add Instrument legend

var instruments = _.uniqBy(data, 'instrument');
var instrumentLegend = menuItemborder.append("g");

instrumentLegend.selectAll("rect")
        .data(instruments)
        .enter()
        .append("rect")
        .attr("x", function (d, i) {
            return 10;
        })
        .attr("y", function (d, i) {
            return (i * 40) + 10;
        })
        .attr("height", function (d, i) {
            return 40;
        })
        .attr("width", 50)
    .attr("fill", function(d,i) {
    return color_mixer(d.instrument);
});
      

// Add instrument legend text
instrumentLegend.selectAll("text")
        .data(instruments)
        .enter()
        .append("text")
        .attr("x", 15)
        .attr("y", function (d, i) {
            return ((i * 40) + 30);
        })
   .attr('fill', 'white')
    .text(function (d, i) {
        return d.instrument;
    });

// Add measure ruler
var backingRectForRuler = svgComponentsOnRulerCanvas.append("g").append('rect')
    .attr("x", -100)
    .attr("y", 375)
    .attr("height", 25)
    .attr("width", 5000)
    .attr('fill', 'black')
    .style('fill', '#1565C0') // menu blue
    .style('postion', 'relative')
   
  

// Add numbers for measure ruler
var barNumbers = svgComponentsOnRulerCanvas.append("g").selectAll('text')
    .data(data)
    .enter()
    .append("text")
    .attr("x", function (d, i) {
      return (d.starting_location_of_current_measure / d.divisions * 25) - 6;
      
    })
    .attr("y", function (d, i) {
        return 396;
    })
    .attr('fill', 'white')
    
    .text(function (d, i) {
        return d.current_measure;
    })
     .style('text-align', "center")


            