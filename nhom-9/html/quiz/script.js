var currentQuiz = 0;
var questions = [
    [
        "Thời gian thực dân Pháp tiến hành khai thác thuộc địa lần thứ nhất ở Việt Nam khi nào?",
        "1858-1884",
        "1884-1896",
        "1896-1913",
        "1914-1918",
        "C"
    ],
    [
        "Trong đợt khai thác thuộc địa lần thứ nhất của thực dân Pháp ở nước ta có giai cấp mới nào được hình thành?",
        "Giai cấp tư sản",
        "Giai cấp tư sản và công nhân",
        "Giai cấp công nhân ",
        "Giai cấp tiểu tư sản",
        "C"
    ],
    [
        "Trước Chiến tranh thế giới thứ nhất, ở Việt Nam có những giai cấp nào?",
        "Địa chủ phong kiến và nông dân",
        "Địa chủ phong kiến, nông dân, tư sản, tiểu tư sản và công nhân",
        "Địa chủ phong kiến, nông dân và công nhân ",
        "Địa chủ phong kiến, nông dân và tiểu tư sản",
        "C"
    ],
    [
        "Dưới chế độ thực dân phong kiến, giai cấp nông dân Việt Nam có yêu cầu bức thiết nhất là gì?",
        "Độc lập dân tộc ",
        "Ruộng đất",
        "Quyền bình đẳng nam, nữ",
        "Được giảm tô, giảm tức",
        "A"
    ],

    [
        "Mâu thuẫn cơ bản và chủ yếu ở Việt Nam đầu thế kỷ XX là mâu thuẫn nào?",
        "Mâu thuẫn giữa giai cấp nông dân với giai cấp địa chủ phong kiến",
        "Mâu thuẫn giữa giai cấp công nhân với giai cấp tư sản",
        "Mâu thuẫn giữa công nhân và nông dân với đế quốc và phong kiến",
        "Mâu thuẫn giữa dân tộc Việt Nam với đế quốc xâm lược và tay sai của chúng ",
        "D"
    ],
    [
        "Đặc điểm ra đời của giai cấp công nhân Việt Nam như thế nào ?",
        "Ra đời trước giai cấp tư sản, trong cuộc khai thác thuộc địa lần thứ nhất của thực dân Pháp.",
        "Phần lớn xuất thân từ nông dân.",
        " Chịu sự áp bức và bóc lột của đế quốc, phong kiến và tư sản",
        "Cả a, b và c",
        "B"
    ],
    [
        "Những giai cấp bị trị ở Việt Nam dưới chế độ thuộc địa của đế quốc Pháp là:",
        " Công nhân và nông dân",
        "Công nhân, nông dân, tiểu tư sản ",
        "Công nhân, nông dân, tiểu tư sản, tư sản dân tộc",
        "Công nhân, nông dân, tiểu tư sản, tư sản dân tộc, địa chủ vừa và nhỏ",
        "D"
    ],
    [
        "Khi nào phong trào công nhân Việt Nam hoàn toàn trở thành một phong trào tự giác ?",
        "Năm 1920 (tổ chức công hội ở Sài Gòn được thành lập)",
        "Năm 1925(cuộc bãi công Ba Son)",
        "Năm 1929 (sự ra đời ba tổ chức cộng sản)",
        "Năm 1930(Đảng Cộng sản Việt Nam ra đời)",
        "D"
    ],
    [
        "Nguyễn ái Quốc lựa chọn con đường giải phóng dân tộc theo khuynh hướng chính trị vô sản vào thời gian nào ?",
        "1917",
        "1918",
        "1919",
        "1920",
        "D"
    ],
    [
        "Báo Đời sống công nhân là của tổ chức nào ?",
        "Đảng Xã hội Pháp",
        "Đảng Cộng sản Pháp",
        "Tổng Liên đoàn Lao động Pháp ",
        "Hội Liên hiệp thuộc địa",
        "C"
    ]
];


/**
 * Xử lý sự kiện chuyển câu hỏi.
 */
function changeQuizTo(clicked_id) {
    currentQuiz = clicked_id - 1;
    renderQuestion();
}
/**
 * Hiển thị câu hỏi.
 */
function renderQuestion() {
    $("#quiz_content").html("Câu " + String(currentQuiz + 1) + ":" + "<br>" + questions[currentQuiz][0]);
    $("#checkboxA").text(questions[currentQuiz][1]);
    $("#checkboxB").text(questions[currentQuiz][2]);
    $("#checkboxC").text(questions[currentQuiz][3]);
    $("#checkboxD").text(questions[currentQuiz][4]);
};

$(document).ready(function () {
    var answerStatus = new Array(10).fill(false);
    // Mặc định hiển thị câu hỏi thứ nhất.
    renderQuestion();
    //Xử lý sự kiện người dùng nhấn phím previous.
    $('#prev').click(function () {
        currentQuiz = (currentQuiz + 9) % 10;
        $("input[name='optradio']").prop("checked", false);
        renderQuestion();
    });
    //Xử lý sự kiện người dùng nhấn phím next.
    $('#next').click(function () {
        currentQuiz = (currentQuiz + 1) % 10;
        $("input[name='optradio']").prop("checked", false);
        renderQuestion();
    });
    //Xử lý sự kiện người dùng tích đáp án.
    $("input[name='optradio']").change(function () {
        if (this.id == questions[currentQuiz][5]) answerStatus[currentQuiz] = true;
        else answerStatus[currentQuiz] = false;
    });
    //Xử lý sự kiện người dùng nhấn phím submit.
    $("button[id='submit']").click(function () {
        let totalScore = 0;
        console.log(answerStatus.length);
        for (var i = 0; i < answerStatus.length; i++) {
            if (answerStatus[i] == true) totalScore = totalScore + 1;
        }
        $('#scores').text(String(10 * totalScore) + '/100');
        if (confirm('Your score : ' + String(10 * totalScore) + '/100'+'\nDo you really want to back to dashboard?')) {
            window.open("/nhom-9/html/dashboard/dashboard.html", "Thanks for Visiting!");
        }
    })
})