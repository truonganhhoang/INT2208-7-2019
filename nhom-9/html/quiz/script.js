var currentQuiz = 0;
var questions = [
    ["Sự phân công lao động xã hội làm cho sản xuất hàng hoá có tính chất gì?",
        "Tính xã hội.", "Tính tư nhân.", "Tính xã hội và tính tư nhân.", "Tính trừu tượng và tính cụ thể.", "A"
    ],
    ["Sự tách biệt tương đối giữa những chủ thể sản xuất làm cho lao động sản xuất hàng hoá có tính chất nào sau đây?",
        "Tính xã hội.", "Tính tư nhân", "Tính xã hội và tính tư nhân", "Tính trừu tượng và tính cụ thể.", "A"
    ],
    ["What is 7 x 3?", "21", "24", "25", "39", "A"],
    ["What is 8 / 2?", "10", "2", "4", "50", "C"],
    ["Sự phân công lao động xã hội làm cho sản xuất hàng hoá có tính chất gì?",
        "Tính xã hội.", "Tính tư nhân.", "Tính xã hội và tính tư nhân.", "Tính trừu tượng và tính cụ thể.", "A"
    ],
    ["Sự tách biệt tương đối giữa những chủ thể sản xuất làm cho lao động sản xuất hàng hoá có tính chất nào sau đây?",
        "Tính xã hội.", "Tính tư nhân", "Tính xã hội và tính tư nhân", "Tính trừu tượng và tính cụ thể.", "A"
    ],
    ["What is 7 x 3?", "21", "24", "25", "39", "A"],
    ["What is 8 / 2?", "10", "2", "4", "50", "C"],
    ["What is 7 x 3?", "21", "24", "25", "39", "A"],
    ["What is 8 / 2?", "10", "2", "4", "50", "C"]
];

function changeQuizTo(clicked_id) {
    currentQuiz = clicked_id - 1;
    renderQuestion();
}

function renderQuestion() {
    $("#quiz_content").html("Câu " + String(currentQuiz + 1) + ":" + "<br>" + questions[currentQuiz][0]);
    $("#checkboxA").text(questions[currentQuiz][1]);
    $("#checkboxB").text(questions[currentQuiz][2]);
    $("#checkboxC").text(questions[currentQuiz][3]);
    $("#checkboxD").text(questions[currentQuiz][4]);
};

$(document).ready(function () {
    var answerStatus = new Array(10).fill(false);
	console.log(answerStatus.length);
    renderQuestion();
    $('#prev').click(function () {
        currentQuiz = (currentQuiz + 9) % 10;
        $("input[name='optradio']").prop("checked", false);
        renderQuestion();
    });
    $('#next').click(function () {
        currentQuiz = (currentQuiz + 1) % 10;
        $("input[name='optradio']").prop("checked", false);
        renderQuestion();
    });
    $("input[name='optradio']").change(function () {
        if(this.id==questions[currentQuiz][5]) answerStatus[currentQuiz]=true;
        else answerStatus[currentQuiz]=false;
    });
    $("button[id='submit']").click( function(){
        let totalScore = 0;
        console.log(answerStatus.length);
        for(var i =0;i<answerStatus.length; i++){
            if(answerStatus[i] == true) totalScore = totalScore+1;
        }
        $('#scores').text(String(10*totalScore)+'/100');
        alert("Điểm số của bạn là: "+ String(10*totalScore));
    })
})