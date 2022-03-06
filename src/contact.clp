<!DOCTYPE html>
<html>
    <head>
	<title>Jason's Portfolio</title>
    </head>
    <body>
	<clp_include name="topnav.clp" />
	<h2>Contact</h2>

	<form>
	    <div class="row">
		<label for="fullname">Full Name:</label>
		<input type="text" id="fullname" name="fullname">
	    </div>

	    <div class="row">
		<label for="mailfr">E-mail:</label>
		<input type="email" id="mailfr" name="mailfr">
	    </div>

	    <div class="row">
		<label for="details">Message:</label>
		<input type="textarea" id="details" name="details">
	    </div>

	    <div class="row">
		<input type="sumbit" value="Send">
	    </div>
	</form>
	
	<clp_include name="footer.clp" />
    </body>
</html>
