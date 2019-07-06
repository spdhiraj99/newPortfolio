
var startbarn = document.getElementById("startbarn");
var stopbarn = document.getElementById("stopbarn");
var resetbarn = document.getElementById("resetbarn");


startbarn.addEventListener('click', function(){
    startSketch('sketchbarn');
});
resetbarn.addEventListener('click', function(){
    resetPaint('sketchbarn');
});
stopbarn.addEventListener('click', function(){
    stopSketch('sketchbarn');
});



function startSketch(sketch) {
    
    switchSketchState(sketch,true);
}

function stopSketch(sketch) {
    
    switchSketchState(sketch,false);
}
function resetPaint(sketch){
    let processingInstance;
    processingInstance = Processing.getInstanceById(sketch);
    processingInstance.resetPaint();
}

function switchSketchState(sketch,on) {
    let processingInstance;
    processingInstance = Processing.getInstanceById(sketch);
    if (on) {
        processingInstance.loop();  // call Processing loop() function
    } else {
        processingInstance.noLoop(); // stop animation, call noLoop()
    }
}