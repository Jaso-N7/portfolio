<!DOCTYPE html>
<html lang="en">
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" href="styles.css">
	<script src="script.js"></script>

	<title>Jason's Portfolio</title>	
    </head>
    <body>
	<clp_include name="topnav.clp" />
	<h2>Contact</h2>
	<section id="social">
	    
	</section>
	<section id="contact">
	    <p>As your next consultant, how may I aid in growing and adding value to your business?</p>
	    <form onsubmit="validateContactForm()"
		  method="POST"
		  action="contact-success">
	    <div class="row">
		<label for="fullname">Full Name:</label>
		<input type="text" id="fullname" name="fullname">
	    </div>

	    <div class="row">
		<label for="mailfr">E-mail:</label>
		<input type="email" id="mailfr" name="mailfr">
	    </div>
	    <div class="row">
		<label for="subject">Consult:</label>
		<select id="subject" name="subject">
		    <option value="unselect">Consultancy required:</option>
		    <option value="cloud">Cloud consultancy</option>
		    <option value="web-new">New Website consultancy</option>
		</select>
	    </div>

	    <div class="row">
		<label for="details">Message:</label>
		<input type="textarea" id="details" name="details">
	    </div>

	    <div class="row">
		<input type="submit" value="Send">
	    </div>
	</form>
	</section>
	
	<clp_include name="footer.clp" />
    </body>
</html>
