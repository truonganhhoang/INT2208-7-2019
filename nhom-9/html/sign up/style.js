// window.onload = function() {
// 	document.getElementById('cancel').onclick = function() {cancel()}
// }
function cancel() {
if (confirm('Do you want to come back?')) 
    window.open("../welcome/welcome.html");
}

function sign_up() {	
	if (confirm('Do you want to sign up?')) 
	document.getElementById('change').innerHTML = "Password and repeat password aren't the same."

}
// $(document).ready(function () {
// 	$("cancel").click(function(){
// 		if(confirm('select?'))
// 			window.open("../welcome/welcome.html");
// 	})
// }