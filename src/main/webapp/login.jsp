<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <script src="./assets/scripts/script.js"></script>
    <style>
        <%@ include file="assets/styles/login-style.css" %>
    </style>
</head>
<body>
<div class="wrapper">

    <div class="left-section">
        <div class="image-credit">
            Photo by <a
                href="https://unsplash.com/@thejoltjoker?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Johannes
            Andersson</a> on
            <a href="https://unsplash.com/s/photos/nature?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
        </div>
    </div>

    <div class="right-section">

        <div class="headers">
            <h1>
                This is not a real online service! You know you need something like this in your life to help you
                realize your deepest dreams.<br>
            </h1>
        </div>

        <div class="forms">
            <h1>Let's do this!</h1>

            <% if (request.getAttribute("error") != null) {%>
            <div id="popup" class="popup">
                <div class="popup-content">
                    <h2 id="popup-title">${requestScope.error.getTitle()}</h2>
                    <p id="popup-message">${requestScope.error.getMessage()}</p>
                    <button onclick="document.getElementById('popup').style.display='none'">
                        <span class="close">close</span>
                    </button>
                </div>
            </div>
            <%} %>

            <form action="#" method="post" class="form-area">

                <div class="contact-area">
                    <div>
                        <label for="email">EMAIL</label>
                        <input type="email" id="email" name="email" placeholder="sample@email.com" required>
                    </div>
                </div>

                <div class="password-area">
                    <div>
                        <label for="password">PASSWORD</label>
                        <label>
                            <input type="password" id="password" placeholder="enter password" name="password" required>
                        </label>
                    </div>
                </div>

                <button type="submit">login</button>
            </form>
        </div>

        <div>Don't have an account? <a href="/signup" style="color: red; font-size: 16px;font-weight: 500;">Signup</a>
        </div>
    </div>
</div>
</body>
</html>