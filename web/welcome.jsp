<%--
  Created by IntelliJ IDEA.
  User: Amir
  Date: 4/19/2020
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
  https://www.youtube.com/watch?v=7Jcr2ZieX9U&list=PLTX5B0J16aFA1UUE3MZKS3Tl124eeMa_L&index=3
  git rm --cached -r .idea
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            text-align: center;
        }
        div {
            color: #3a6b0b;
            margin-top: 50px;
        }
        p {
            color: #777777;
        }
        h3 {
            color: #ffa544;
        }

    </style>
</head>
<body>
<div>
    <h2>Welcome ${name}</h2>
    <p>click to show your password</p>
    <button id="pass" onclick="pass()">Show</button>
    <h3 id="text"></h3>
</div>
<script>
    let button = document.getElementById("pass");

    let text = document.getElementById("text");
    // text.style.display = "none";

    function pass() {
        if (button.innerHTML === "Show") {
            showPass();
        } else {
            hidePass();
        }
    }

    function showPass() {
        // text.style.display = "block";
        text.innerHTML = "${password}";
        button.innerHTML = "Hide";
    }

    function hidePass() {
        // text.style.display = "none";
        text.innerHTML = "";
        button.innerHTML = "Show";
    }
</script>
</body>
</html>