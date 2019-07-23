'use strict';
var intervalHandle;

var soundPrefix = '';
var soundLabels = [
    'forward-left',
    'forward',
    'forward-right',
    'left',
    'right',
    'back-left',
    'back',
    'back-right'
];

var soundFiles = [];

$(document).ready(function(){
    $('#stop-go-button').click(go);
    soundLabels.forEach(function(label){
        soundFiles.push($("<audio>", { src: "sounds/" + label + ".ogg", preload: "auto" }).appendTo("body") );
    });
})

function go(){
    let pauseLength = $('#pause-length').val() * 1000;
    $("#stop-go-button").prop('value', 'Stop');
    $('#stop-go-button').off('click', go);
    $('#stop-go-button').click(stop);

    intervalHandle = setInterval(nextStep, pauseLength);
}

function stop(){
    $('#stop-go-button').off('click', stop);
    $('#stop-go-button').click(go);
    $('#stop-go-button').prop('value', 'GO!');
    clearInterval(intervalHandle);
}

function nextStep(){
    const possibleSteps = 8;
    let step = Math.ceil(Math.random() * possibleSteps);
    let arrowToUse = $('.arrow.' + step);
    arrowToUse.prop('style', "background-color:red");
    setTimeout(function(){
        arrowToUse.prop('style', "background-color:white");
    }, 200);
    soundFiles[step - 1][0].play();
}