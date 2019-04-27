/**
 * 
 */

//JS 입니다.
function check() {
	if (document.frm.id.value=="") {
		alert("아이디를 입력하세요");
	document.frm.id.focus();
	return false;
	}else {
		return true;
	}
}
