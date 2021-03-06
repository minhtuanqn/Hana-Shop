<%-- 
    Document   : login
    Created on : Jan 13, 2021, 1:58:58 AM
    Author     : MINH TUAN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .login {
                font-size: 130%;
                border: solid;
                height: 200px;
                width:  450px;
                margin-left: 35%;
                text-align: center;
            }
            h1 {
                font-size: 300%;
                margin-top: 100px;
                text-align: center;
            }
            #btnLogin {
                font-size: 90%;
            }
            .loginUp {
                margin-left: 35%;
                width:  450px;
                background-color: rgb(255, 186, 0);
            }

        </style>
    </head>
    <body>
        <div class="loginUp">
            <h1>
                Login Page
            </h1>
        </div>
        <div class="login"><br/>
            <form action="DispatchServlet" method="POST">
                Username: <input  type="text" name="txtUsername" value="" /><br/><br/>
                Password: <input type="password" name="txtPassword" value=""/><br/><br/>
                <input id="btnLogin" type="submit" name="btnAction" value="Login" /><br/>
            </form>
            <input type="button" name="Google" value="Login by Google Gmail" onclick="window.location.replace('https://accounts.google.com/o/oauth2/auth?client_id=891672189666-dc3srsif66268npgrb76hvmbmn5h0kvl.apps.googleusercontent.com&scope=email&redirect_uri=http://localhost:8080/Assignment1_LeMinhTuan/DispatchServlet?btnAction=GoogleLogin&response_type=code')" /><br/>
            <c:if test="${requestScope.STATUS ne null}">
                <font color="red">${requestScope.STATUS}</font>
            </c:if>
            <c:if test="${param.GOOGLE_STATUS ne null}">
                <font color="red">${param.GOOGLE_STATUS}</font>
            </c:if>
        </div>
    </body>
</html>
