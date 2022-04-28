<%@ page import="models.JavaEmail"%>
<%@ page import="javax.mail.MessagingException" %>

<%
    String message = null;
    String status = null;
    if (request.getParameter("submit") != null) {
        JavaEmail javaEmail = new JavaEmail();
        javaEmail.setMailServerProperties();
        String emailSubject = "Product Description - Auburn Reduction Junction";
        String emailBody = "";
        if (request.getParameter("name") != null) {
            emailBody = "Sender Name: " + request.getParameter("name")
                    + "<br>";
        }
        if (request.getParameter("email") != null) {
            emailBody = emailBody + "Sender Email: "
                    + request.getParameter("email") + "<br>";
        }
        if (request.getParameter("phone") != null) {
            emailBody = emailBody + "Sender Phone: "
                    + request.getParameter("phone") + "<br>";
        }
        if (request.getParameter("pd-name") != null) {
            emailBody = emailBody +  "Product Name: " + request.getParameter("pd-name")
                    + "<br>";
        }
        if (request.getParameter("prod-descp") != null) {
            emailBody = emailBody + "Product Description: " + request.getParameter("prod-descp")
                    + "<br>";
        }
        if (request.getParameter("price") != null) {
            emailBody = emailBody + "Product Price: " + request.getParameter("price")
                    + "<br>";
        }
        if (request.getParameter("message") != null) {
            emailBody = emailBody + "Message: " + request.getParameter("message")
                    + "<br>";
        }
        javaEmail.createEmailMessage(emailSubject, emailBody);
        try {
            javaEmail.sendEmail();
            status = "success";
            message = "Email sent Successfully!";
        } catch (MessagingException me) {
            status = "error";
            message = "Error in Sending Email!";
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contact Us</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>
<body>
<div id="central">
    <div class="banner-section">
        <img src="images/contact-banner.jpg">
    </div>
    <div class="content">
        <h1>Contact Us</h1>
        <p>Please send us your product information with your details through this form to get your products featured on our website.</p>
        <div id="message">
            <form id="frmContact" name="frmContact" action="" method="POST"
                  novalidate="novalidate">
                <div class="label">Name</div>
                <div class="field">
                    <input type="text" id="pp-name" name="name"
                           placeholder="Enter Your Name Here" title="Please enter your Name"
                           class="required" aria-required="true" required>
                </div>

                <div class="label">Email Address</div>
                <div class="field">
                    <input type="text" id="pp-email" name="email"
                           placeholder="Enter Your Email Address Here"
                           title="Please enter your email address" class="required email"
                           aria-required="true" required>
                </div>

                <div class="label">Phone Number</div>
                <div class="field">
                    <input type="text" id="pp-phone" name="phone"
                           placeholder="Enter Your Phone Number Here"
                           title="Please enter your phone number" class="required phone"
                           aria-required="true" required>
                </div>

                <div class="label">Product Name</div>
                <div class="field">
                    <input type="text" id="pd-name" name="pd-name"
                           placeholder="Enter Your Product Name Here" title="Please enter your Product Name"
                           class="required" aria-required="true" required>
                </div>

                <div class="label">Product Description</div>
                <div class="field">
						<textarea id="prod-descp" name="prod-descp"
                                  placeholder="Enter Your Product Description Here"></textarea>
                </div>

                <div class="label">Product Price</div>
                <div class="field">
                    <input type="text" id="price" name="price"
                           placeholder="Enter Your Product Price Here"
                           title="Enter Your Product Price Here" class="required price"
                           aria-required="true" required>
                </div>

                <div class="label">Additional Information</div>
                <div class="field">
						<textarea id="about-project" name="message"
                                  placeholder="Enter your message here"></textarea>
                </div>
                <div id="mail-status"></div>
                <input type="submit" name="submit" value="Send Message"
                       id="send-message" style="clear: both;">
            </form>
        </div>
    </div>
    <!-- content -->
</div>
<!-- central -->
</body>
</html>
