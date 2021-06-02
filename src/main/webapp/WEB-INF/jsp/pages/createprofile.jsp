<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Profile</title>
            <link href="<c:url value=" /resources/css/style.css " />" rel="stylesheet">
            <style>
                @import url(https://fonts.googleapis.com/css?family=Roboto:400,300,500);
                *:focus {
                    outline: none;
                }
                
                body {
                    margin: 0;
                    padding: 0;
                    background: #DDD;
                    font-size: 16px;
                    color: #222;
                    font-family: 'Roboto', sans-serif;
                    font-weight: 300;
                }
                
                #login-box {
                    margin: 5% auto;
                    width: 600px;
                    background: #FFF;
                    border-radius: 2px;
                    padding: 40px;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
                }
                
                h1 {
                    margin: 0 0 20px 0;
                    font-weight: 300;
                    font-size: 28px;
                }
                
                input[type="text"],
                input[type="password"] {
                    display: block;
                    box-sizing: border-box;
                    margin-bottom: 20px;
                    padding: 4px;
                    width: 220px;
                    height: 32px;
                    border: none;
                    border-bottom: 1px solid #AAA;
                    font-family: 'Roboto', sans-serif;
                    font-weight: 400;
                    font-size: 15px;
                    transition: 0.2s ease;
                }
                
                input[type="text"]:focus,
                input[type="password"]:focus {
                    border-bottom: 2px solid #16a085;
                    color: #16a085;
                    transition: 0.2s ease;
                }
                
                button[type="submit"] {
                    margin: 10px;
                    width: 210px;
                    height: 28px;
                    background: #16a085;
                    border: none;
                    border-radius: 2px;
                    color: #FFF;
                    font-family: 'Roboto', sans-serif;
                    font-weight: 500;
                    text-transform: uppercase;
                    transition: 0.1s ease;
                    cursor: pointer;
                }
                
                input[type="submit"]:hover,
                input[type="submit"]:focus {
                    opacity: 0.8;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
                    transition: 0.1s ease;
                }
                
                input[type="submit"]:active {
                    opacity: 1;
                    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
                    transition: 0.1s ease;
                }
            </style>

        </head>

        <body>
            <form method="POST" action="/update-profile">
                <div id="login-box">

                    <h1>Profile</h1>

                    <!-- <c:if test="${emptyFieldsError}">
                        <p class="error">You need to either attach an Image or change your bio.</p>
                    </c:if>
                    <c:if test="${failedUpload}">
                        <p class="error">File size exceeded ! Try files with less than 2MB.</p>
                    </c:if> -->


                    <!-- <input type="file" name="file" /> -->



                    <p>Bio:</p>
                    <textarea id="bio" name="bio" rows="4" cols="50">${sessionScope.bio}</textarea>

                    <button type="submit" value="profile">Upload</button>

                </div>
            </form>
        </body>

        </html>