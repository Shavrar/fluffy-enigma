<%@page isErrorPage="true"
        language="java"
        contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%-- атрибут isErrorPage показывает, что данная JSP-страница
        может обрабатывать различные ошибки, в том числе и
        исключительные ситуации --%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>error</TITLE>
    </HEAD>
    <BODY>
        <c:choose>
            <c:when test="${not empty pageContext.exception}">
            <%-- проверяем, было ли какое-либо исключение --%>
                <H2>Database error</H2>
                <P>Kill admin</P>
            </c:when>
            <c:otherwise>
                <H2>Application error</H2>
                <P>Kill admin</P>
            </c:otherwise>
        </c:choose>
    </BODY>
</HTML>