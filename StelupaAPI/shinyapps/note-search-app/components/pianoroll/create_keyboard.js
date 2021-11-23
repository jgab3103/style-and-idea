   var returnObject = {};


        returnObject.prepareSVGKeyboard = function (svg) {

            var keyboardContainer = svg.append('g');
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
            
            


            return keyboardContainer;


        };



   