
        var apiWidth = 1110;
        var engineSearchWidth = 540;
        var engineResultsWidth = 770;
        var engineResultsHeight = 300;
        var height = 300;
        var heightOfKeyboard = 890;
        var widthOfNoteInputArea = 5000;
        var xPositionOfInstrumentColors = 700;


convertMidiNumberToNote = function (midiNumber) {
            var octave = (Math.floor(midiNumber / 12)) - 1
            var note = midiNumber % 12

            if (note === 0) {
                return 'C' + octave.toString();
            } else if (note === 1) {
                return 'C#/Db' + octave.toString();
            } else if (note === 2) {
                return 'D' + octave.toString();
            }else if (note === 3) {
                return 'D#/Eb' + octave.toString();
            }else if (note === 4) {
                return 'E' + octave.toString();
            }else if (note === 5) {
                return 'F' + octave.toString();
            }else if (note === 6) {
                return 'F#/Gb' + octave.toString();
            }else if (note === 7) {
                return 'G' + octave.toString();
            }else if (note === 8) {
                return 'G#/Ab' + octave.toString();
            }else if (note === 9) {
                return 'A' + octave.toString();
            }else if (note === 10) {
                return 'A#/Bb' + octave.toString();
            }else if (note === 11) {
                return 'B' + octave.toString();
            }
            
        };





var octaveNumbersForNonPianoView = [
            {
                octave: '7'
            },
            {
                octave: '6'
            },
            {
                octave: '5'
            },
            {
                octave: '4'
            },
            {
                octave: '3'
            },
            {
                octave: '2'
            },
            {
                octave: '1'
            },
            {
                octave: '0'
            }
    ];
    
    
    
  var durationPixelAndNameEquivalencies = [
            {
                fractionAsStringForSearchService: '21/1024xx',
                pixelLength: (21 / 1024 * 160),
                nameOfDuration: 'Thirty second note triplet'
            },
            {
                fractionAsStringForSearchService: '1/32xxxxx',
                pixelLength: (1 / 32 * 160),
                nameOfDuration: 'Thirty second note'
            },
            {
                fractionAsStringForSearchService: '21/512xxx',
                pixelLength: 6.56,
                nameOfDuration: 'Sixteenth note triplet'
            },
            {
                fractionAsStringForSearchService: '1/16xxxxx',
                pixelLength: 10,
                nameOfDuration: 'Sixteenth note'
            },
            {
                fractionAsStringForSearchService: '1/12xxxxx',
                pixelLength: 13.33,
                nameOfDuration: 'Eighth note triplet'
            },
            {
                fractionAsStringForSearchService: '1/8xxxxxx',
                pixelLength: 20,
                nameOfDuration: 'Eighth note'
            },
            {
                fractionAsStringForSearchService: '1/6xxxxxx',
                pixelLength: 26.67,
                nameOfDuration: 'Quarter note triplet'
            },
            {
                fractionAsStringForSearchService: '1/4xxxxxx',
                pixelLength: 40,
                nameOfDuration: 'Quarter note'
            },
            {
                fractionAsStringForSearchService: '1/3xxxxxx',
                pixelLength: 53.33,
                nameOfDuration: 'Half note triplet'
            },
            {
                fractionAsStringForSearchService: '1/2xxxxxx',
                pixelLength: 80,
                nameOfDuration: 'Half note'
            },
            {
                fractionAsStringForSearchService: '1xxxxxxxx',
                pixelLength: 160,
                nameOfDuration: 'Whole note'
            },
];


        var octaveNumbersForNonPianoView = [
            {
                octave: '7'
            },
            {
                octave: '6'
            },
            {
                octave: '5'
            },
            {
                octave: '4'
            },
            {
                octave: '3'
            },
            {
                octave: '2'
            },
            {
                octave: '1'
            },
            {
                octave: '0'
            }
    ];


        var noteNames = [

            {
                noteName: 'b',
            },
            {
                noteName: 'a#',
            },
            {
                noteName: 'a',
            },
            {
                noteName: 'g#',
            },
            {
                noteName: 'g',
            },
            {
                noteName: 'f#',
            },
            {
                noteName: 'f',
            },
            {
                noteName: 'e',
            },

            {
                noteName: 'd#',
            },
            {
                noteName: 'd',
            },
            {
                noteName: 'c#',
            },
            {
                noteName: 'c',
            },

            {
                noteName: 'b',
            },
            {
                noteName: 'a#',
            },
            {
                noteName: 'a',
            },
            {
                noteName: 'g#',
            },
            {
                noteName: 'g',
            },
            {
                noteName: 'f#',
            },
            {
                noteName: 'f',
            },
            {
                noteName: 'e',
            },

            {
                noteName: 'd#',
            },
            {
                noteName: 'd',
            },
            {
                noteName: 'c#',
            },
            {
                noteName: 'c',
            },

            {
                noteName: 'b',
            },
            {
                noteName: 'a#',
            },
            {
                noteName: 'a',
            },
            {
                noteName: 'g#',
            },
            {
                noteName: 'g',
            },
            {
                noteName: 'f#',
            },
            {
                noteName: 'f',
            },
            {
                noteName: 'e',
            },

            {
                noteName: 'd#',
            },
            {
                noteName: 'd',
            },
            {
                noteName: 'c#',
            },
            {
                noteName: 'c',
            },

            {
                noteName: 'b',
            },
            {
                noteName: 'a#',
            },
            {
                noteName: 'a',
            },
            {
                noteName: 'g#',
            },
            {
                noteName: 'g',
            },
            {
                noteName: 'f#',
            },
            {
                noteName: 'f',
            },
            {
                noteName: 'e',
            },

            {
                noteName: 'd#',
            },
            {
                noteName: 'd',
            },
            {
                noteName: 'c#',
            },
            {
                noteName: 'c',
            },

            {
                noteName: 'b',
            },
            {
                noteName: 'a#',
            },
            {
                noteName: 'a',
            },
            {
                noteName: 'g#',
            },
            {
                noteName: 'g',
            },
            {
                noteName: 'f#',
            },
            {
                noteName: 'f',
            },
            {
                noteName: 'e',
            },

            {
                noteName: 'd#',
            },
            {
                noteName: 'd',
            },
            {
                noteName: 'c#',
            },
            {
                noteName: 'c',
            },

            {
                noteName: 'b',
            },
            {
                noteName: 'a#',
            },
            {
                noteName: 'a',
            },
            {
                noteName: 'g#',
            },
            {
                noteName: 'g',
            },
            {
                noteName: 'f#',
            },
            {
                noteName: 'f',
            },
            {
                noteName: 'e',
            },

            {
                noteName: 'd#',
            },
            {
                noteName: 'd',
            },
            {
                noteName: 'c#',
            },
            {
                noteName: 'c',
            },

            {
                noteName: 'b',
            },
            {
                noteName: 'a#',
            },
            {
                noteName: 'a',
            },
            {
                noteName: 'g#',
            },
            {
                noteName: 'g',
            },
            {
                noteName: 'f#',
            },
            {
                noteName: 'f',
            },
            {
                noteName: 'e',
            },

            {
                noteName: 'd#',
            },
            {
                noteName: 'd',
            },
            {
                noteName: 'c#',
            },
            {
                noteName: 'c',
            }


        ]



        var numbersForNonPianoView = [

            {
                sector: '+9'
            },
            {
                sector: '+6'
            },
            {
                sector: '+3'
            },
            {
                sector: '+0'
            },




            {
                sector: '+9'
            },
            {
                sector: '+6'
            },
            {
                sector: '+3'
            },
            {
                sector: '+0'
            },
            {
                sector: '+9'
            },
            {
                sector: '+6'
            },
            {
                sector: '+3'
            },
            {
                sector: '+0'
            },

            {
                sector: '+9'
            },
            {
                sector: '+6'
            },
            {
                sector: '+3'
            },
            {
                sector: '+0'
            },

            {
                sector: '+9'
            },
            {
                sector: '+6'
            },
            {
                sector: '+3'
            },
            {
                sector: '+0'
            },

            {
                sector: '+9'
            },
            {
                sector: '+6'
            },
            {
                sector: '+3'
            },
            {
                sector: '+0'
            },

            {
                sector: '+9'
            },
            {
                sector: '+6'
            },
            {
                sector: '+3'
            },
            {
                sector: '+0'
            }
    ];


        var keyboardSpacingData = [
            {
                x: 0,
                y: 0,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 10,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 20,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 30,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 40,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 50,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 60,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 70,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 80,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            //
            {
                x: 0,
                y: 90,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 100,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 110,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 120,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 130,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 140,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 150,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 160,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 170,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 180,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 190,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 200,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            //


            {
                x: 0,
                y: 210,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 220,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 230,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 240,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 250,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 260,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 270,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 280,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 290,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 300,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 310,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 320,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },


            //

            {
                x: 0,
                y: 330,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 340,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 350,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 360,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 370,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 380,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 390,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 400,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 410,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 420,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 430,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 440,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },

            //

            {
                x: 0,
                y: 450,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 460,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 470,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 480,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 490,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 500,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 510,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 520,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 530,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 540,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 550,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 560,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },


    //


            {
                x: 0,
                y: 570,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 580,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 590,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 600,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 610,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 620,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 630,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 640,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 650,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 660,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 670,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 680,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },


        //
            {
                x: 0,
                y: 690,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 700,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 710,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 720,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 730,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 740,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 750,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 760,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 770,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 780,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 790,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 800,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },


        //
            {
                x: 0,
                y: 810,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 820,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 830,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 840,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 850,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 860,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 870,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            },
            {
                x: 0,
                y: 880,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 890,
                color: 'black',
                axiscolor: 'black',
                width: 25
            },
            {
                x: 0,
                y: 900,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 35
            },
            {
                x: 0,
                y: 910,
                color: 'black',
                axiscolor: 'black',
                width: 35
            },
            {
                x: 0,
                y: 920,
                color: 'rgb(77,77,77)',
                axiscolor: 'rgb(77,77,77)',
                width: 25
            }

      ];
