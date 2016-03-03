<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>Authorization Form</TITLE>
    </HEAD>
    <BODY>
        <H1>Authorization</H1>
        <c:if test="${not empty param['message']}">
            <P style="color: red;">${param['message']}</P>
        </c:if>
        <FORM action="login.html" method="post">
            <P>User name:</P>
            <P><INPUT type="text" name="login"></P>
            <P>Password:</P>
            <P><INPUT type="password" name="password"></P>
            <P><BUTTON type="submit">Enter</BUTTON></P>
            
        </FORM>
        <A href="index.html">Back</A>
    </BODY>
</HTML>