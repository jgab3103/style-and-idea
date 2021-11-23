svg.selectAll('g').remove();

var color_mixer = d3.scaleOrdinal(d3.schemeCategory10);


// ZOOM CODE
var margin = 0;
var width = 8000;
var height = 400;



var zoomingMainCanvas = function () {
  
                        
    svgComponentsOnRulerCanvas
      .attr("transform", d3.event.transform);
    
    svgComponentsOnRulerNumbersCanvas
      .attr("transform", d3.event.transform);
    
    svgComponentsOnMainCanvas
      .attr("transform", d3.event.transform);
    
    svgComponentsOnKeyboardCanvas
      .attr("transform",
    'translate('+d3.event.transform.x +',0) scale('+d3.event.transform.k+',1)');
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

var svgComponentsOnMainCanvas = mainCanvas.append("g");
var svgComponentsOnRulerNumbersCanvas = rulerNumbersCanvas.append("g");
var svgComponentsOnKeyboardCanvas = keyboardCanvas.append("g");
var svgComponentsOnRulerCanvas = rulerCanvas.append("g");


var canvas = svg;

// Create keyboard -----------------------------------------------------------
var keyboard = svgComponentsOnKeyboardCanvas;
var keyboardContainer = keyboard.append('g');
//                .attr('class', 'keyboard');

var keyboardContainerBackgroundRect = keyboardContainer.append('rect')
    .attr('x', 0)
    .attr('y', 30)
    .attr('height', 890)
    .attr('width', 50)
    .style('stroke', "lightgray")
    .style('stroke-width', 1)
    .attr('fill', "white");

var noteShapesOnKeyboard = keyboardContainer.selectAll('rect')
    .data(keyboardSpacingData)
    .enter().append("rect")
    .attr("x", function (d, i) {
        return d.x;
    })
    .attr("y", function (d) {
        return d.y + 30;
    })
    .attr("width", function (d, i) {
        return d.width;
    })
    .attr("height", 10)
    .attr("fill", function (d, i) {
        return d.color;
    });

var linesDividingNoteShapesOnKeyboard = keyboardContainer.selectAll('line')
    .data(d3.range(0, 890, 17.14285))
    .enter()
    .append("line")
    .attr("x1", function (d, i) {
        if (i % 7 === 4 || i % 7 === 0) {
            return 0;
        } else {
            return 25;
        }
    })
    .attr("y1", function (d, i) {
        return d + 30;
    })
    .attr("x2", 50)
    .attr("y2", function (d, i) {

        return d + 30;
    })
    .attr('stroke-width', 1)
    .attr('stroke', 'lightgray');

        

var textMarkingOctavesOnKeyboard = keyboardContainer.selectAll('text')
    .data(octaveNumbersForNonPianoView)
    .enter()
    .append("text")
    .attr("x", function (d, i) {
        return 2;
    })
    .attr("y", function (d, i) {
        return (120 * i) + 117 + 30;
    })
    .text(function (d, i) {
        return d.octave;
    })
    .attr("font-family", "sans-serif Helvetica Neue, Helvetica, Arial")
    .attr("font-size", "7px")
    .attr("fill", "steelblue");



// Create shading for piano role ----------------------------------------------------




var shadingForPianoView = svgComponentsOnMainCanvas.append('g');

            var axesShadesForPianoView = shadingForPianoView.selectAll('rect')
                .data(keyboardSpacingData)
                .enter().append("rect")
                .attr("x", function (d, i) {
                    return 0;
                })
                .attr("y", function (d) {
                    return d.y + 30;
                })
                .attr("width", function (d, i) {
                    return widthOfNoteInputArea;
                })
                .attr("height", 10)
                .attr("fill", function (d, i) {
                    return d.axiscolor;
                })
                .on('mouseover', function () {
                 
                    var hoverFrequency = (1070 - (d3.select(this).attr("y"))) / 10;
                    var dText = convertMidiNumberToNote(hoverFrequency);
                    d3.select("#note-display-text").text(dText);
                })
                .on('mouseout', function () {
                    d3.select('#note-display-text').text('');
                })


            var noteDisplayContainer = menuItemborder.append("g");
            var noteDisplay = noteDisplayContainer.append('text')
                .attr('x', xPositionOfInstrumentColors)
                .attr('y', 40)
                .text('')
                .attr("font-family", "sans-serif")
                .attr("font-size", "11px")
                .attr("fill", "white")
                .attr("id", "note-display-text");
                



var div = d3.select("body").append("div")
    .attr("class", "tooltip")
    .style("opacity", 0);


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
       console.log("HDLSDFSDFSDFJSDFSDFSF");
       
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







    var verticalLines =  svgComponentsOnKeyboardCanvas.append("g")
          
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





     var relativePitchKeyboardContainer = svgComponentsOnKeyboardCanvas.append("g");
     var relativePitchKeyboardContainerBackgroundRect = relativePitchKeyboardContainer.append('rect').attr('x', 0)
                .attr('y', 0)
                .attr('height', 1040)
                .attr('width', 50)

                .attr('fill', "white");

            var octaveBackgroundForNonKeyboardRect = relativePitchKeyboardContainer.append("g");

            octaveBackgroundForNonKeyboardRect.selectAll("rect")
                .data(octaveNumbersForNonPianoView)
                .enter()
                .append("rect")
                .attr("x", function (d, i) {
                    return 0;
                })
                .attr("y", function (d, i) {
                    return i * 120;
                })
                .attr("height", function (d, i) {
                    return 120;
                })
                .attr("width", 50)
                .attr('fill', function(d, i){
                    if (i % 2 === 1) {
                        return 'rgb(61,181,216)';
                    }        
                    else {
                        return 'rgb(61,181,216)';
                    }
                })
                 .style("opacity", function (d, i) {

                    if (i % 2 === 1) {
                        return "0.2";
                    } else {
                        return "0.1";
                    }

                });
   


            var octaveNumbersForRelativePitchKeyboardBackgroundRect = relativePitchKeyboardContainer.append("g");


            var octaveNumberTextForNonPianoView = octaveNumbersForRelativePitchKeyboardBackgroundRect.selectAll('text')
                .data(octaveNumbersForNonPianoView)
                .enter()
                .append("text")
                .attr("x", function (d, i) {
                    return 0;
                })
                .attr("y", function (d, i) {
                    return (120 * i) + 95;
                })
                .text(function (d, i) {
                    return d.octave;
                })
                .attr("class", "stretch-text")
                .attr("fill", "black");
                
                

            var backingRectForRuler = svgComponentsOnKeyboardCanvas.append("g").append('rect')
                .attr("x", -5)
                .attr("y", 0)
                .attr("height", 25)
                .attr("width", 5000)
                .attr('fill', '#575757')
               




            
            var barNumbers = svgComponentsOnKeyboardCanvas.append("g").selectAll('text')
                .data(data)
                .enter()
                .append("text")
                .attr("x", function (d, i) {
                  return (d.starting_location_of_current_measure / d.divisions * 25) - 6;
                  
                })
                .attr("y", function (d, i) {
                    return 21;
                })
                .attr('fill', 'white')
                .text(function (d, i) {
                    return d.current_measure;
                });


            