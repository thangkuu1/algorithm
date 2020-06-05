window.onload = function(){
    onValueChanged();
};
function makeURI() {
	// var algorithm = document.getElementById("algorithm").value;
	// var account = document.getElementById("account").value;
	// var issuer = document.getElementById("issuer").value;
	// var secret = document.getElementById("secret").value;
	// var digits = document.getElementById("digits").value;
	// var period = document.getElementById("period").value;
	// var image = document.getElementById("image").value;
	// var type = document.querySelector('input[name="type"]:checked').value;
	// var uri = "otpauth://" + type + "/";

    var algorithm = "SHA1";
    var account = document.getElementById("account").value;
    var issuer = document.getElementById("issuer").value;
    var secret = document.getElementById("secret").value;
    var digits = 6;
    var period = 30;
    var image = ""
    var type = "totp";// counter: hotp, timeout: totp;
    var uri = "otpauth://" + type + "/";

	if (issuer.length > 0)
		uri += encodeURIComponent(issuer) + ":";

	uri += encodeURIComponent(account);
	uri += "?secret=" + secret;
	uri += "&algorithm=" + algorithm;
	uri += "&digits=" + digits;
	uri += "&period=" + period;

	if (type == "hotp")
		uri += "&counter=0";

	if (image.length > 0)
		uri += "&image=" + encodeURIComponent(image);

	return uri;
}

function onImageError() {
  document.getElementById("image").classList.add("error");
  document.getElementById("preview").src = "img/error.svg";
}

function onValueChanged() {
  function check(element, valid) {
    var e = document.getElementById(element);
    var v = valid(e.value);
    e.classList.toggle("error", !v);
    return v;
  }

  // var err = false;
  // err |= !check("account", (v) => v.length > 0 && !v.match(/:/));
  // err |= !check("secret", (v) => v.match(/^[a-z2-7]{26,}$/i));
  // err |= !check("issuer", (v) => !v.match(/:/));

  // var prv = document.getElementById("preview");
	// var img = document.getElementById("image");
	// var src = img.value.length > 0 ? img.value : "img/freeotp.svg";
  //
  // img.classList.remove("error");
  // prv.src = err ? "img/error.svg" : src;

  // var uri = makeURI();
  //var uri = "otpauth://totp/dangnt1:dangnt1@lienvietpostbank.com.vn?secret=TE447KPPEKTZXMWQ&issuer=DANGNT1&algorithm=SHA1&digits=6&period=30";
  var uri = document.getElementById("qr_code").value;
  console.log("value uri: " + uri);
    //var uri = "otpauth://totp/hunglv5:hunglv5@lienvietpostbank.com.vn?secret=2OD74B4VQXMTQS4D&issuer=hunglv5&algorithm=SHA1&digits=6&period=30";
	//var uri = "otpauth://totp/tuanha:tuanha@lienvietpostbank.com.vn?secret=GBLKGJT4REQKKEBU&issuer=tuanha&algorithm=SHA1&digits=6&period=30";
	qrcode.clear();
	qrcode.makeCode(uri);
  document.getElementById("urilink").href = uri;
}

function onRandomClicked() {
  var secret = document.getElementById("secret");
	var bytes = new Uint8Array(35);

	window.crypto.getRandomValues(bytes);
	secret.value = base32.encode(bytes);
	onValueChanged();
}