<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<!-- vim: set nowrap ts=2 sw=2: -->

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>FreeOTP - QR Code Generator</title>
<!--<link rel="stylesheet" type="text/css" href="common.css" media="screen" />-->
	<link rel="stylesheet" type="text/css" href="resources/css/qrcode.css" media="screen" />

    <script type="text/javascript" src="resources/js/base32.js"></script>
    <script type="text/javascript" src="resources/js/qrcode.js"></script>
	  <script type="text/javascript" src="resources/js/qrcode_custom.js"></script>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
		<meta charset="UTF-8" />
  </head>

  <body>
  	
  	<input type="hidden" id = "qr_code" value = "${result_qrcode }"/>
		
		<main>
	      <a id="urilink">
	        <div id="qrcode">
	          <img id="preview" src="resources/img/lpb-logo.jpg" onError="onImageError()" />
	        </div>
	      </a>

		 
		</main>

		<script type="text/javascript">
      var qrcode = new QRCode(document.getElementById("qrcode"), {
	      correctLevel : QRCode.CorrectLevel.H,
	      text: window.location.href,
	      colorLight : "#ffffff",
	      colorDark : "#000000"
      });

      /*function update(from, to) {
		    document.getElementById(to).innerHTML = from.value;
	      onValueChanged();
      }
	  */

      //document.getElementById("random").click();
		</script>
  </body>
</html>







