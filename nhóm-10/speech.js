var r = document.getElementById('speech');
var lan = document.getElementById('lang');
var speechRecognizer = new webkitSpeechRecognition();
function chang(){
    var str = lan.options[lan.selectedIndex].value;
    if(str=="1"){
    speechRecognizer.lang = 'vi-VN';
    }
    else
    speechRecognizer.lang = 'en-US';
}

function startConverting () {
    chang();
    if('webkitSpeechRecognition' in window){
        speechRecognizer.continuous = true;
        speechRecognizer.interimResults = true;

        speechRecognizer.start();

        var finalTranscripts = '';

        speechRecognizer.onresult = function(event){
            var interimTranscripts = '';
            for(var i = event.resultIndex; i < event.results.length; i++){
                var transcript = event.results[i][0].transcript;
                transcript.replace("\n", "<br>");
                if(event.results[i].isFinal){
                    finalTranscripts += transcript;
                }else{
                    interimTranscripts += transcript;
                }
            }
            r.innerHTML = finalTranscripts + ' '+ interimTranscripts ;
        };
        speechRecognizer.onerror = function (event) {
        };
    }else{
        r.innerHTML = 'Your browser is not supported. If google chrome, please upgrade!';
    }
}
function stop(){
    speechRecognizer.stop();
}