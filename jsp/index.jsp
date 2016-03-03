<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>index</TITLE>
        <STYLE>
            TABLE {
                border-collapse: collapse;
                overflow: scroll;
                height: 100px
            }
            TH, TD {
                border: 1px solid black;
                padding: 5px 30px 5px 10px;
                height: 25px;
            }
        </STYLE>
    </HEAD>
    <BODY>
    
        <c:choose>
            <c:when test="${not empty user}">
                ${user.login}&nbsp;&mdash; <A href="logout.html">exit</A>
            </c:when>
            <c:otherwise>
                <A href="login-form.jsp">enter</A>
            </c:otherwise>
        </c:choose>
        <c:if test="${user.role eq 'manager'}">
        <FORM action="deleteClient.html" method="post">
        </c:if>
            <TABLE>
                <TR>
                    <c:if test="${user.role eq 'manager'}"><TH>&nbsp;</TH></c:if>
                    <TH>Name</TH>
                    <TH>Adress</TH>
                    <TH>All Projects</TH>
                    <TH>Finished Projects</TH>
                    <TH>&nbsp;</TH>
                </TR>
                <c:forEach var="client" items="${clients}">
                    <TR>
                        <c:if test="${user.role eq 'manager'}">
                        <TD>
                            <INPUT type="checkbox" name="id"
                                   value="${client.id}">
                        </TD>
                        </c:if>
                        <TD>
                            <c:if test="${user.role eq 'manager'}">
                            <A href="editClient.html?id=${client.id}">
                            </c:if>
                                ${client.name}
                            <c:if test="${user.role eq 'manager'}">
                            </A>
                            </c:if>
                        </TD>
                        <TD>${client.adress}</TD>
                        <TD>${client.counta} </TD>
                        <TD>${client.countf} </TD>
                        <TD><A href="projects.html?ClientName=${client.name}">View Projects</A></TD>       
                    </TR>
                </c:forEach>
            </TABLE>
            
        <c:if test="${user.role eq 'manager'}">
            <P>
                <A href="editClient.html">Add Client</A>
                <BUTTON type="submit">Delete Client</BUTTON>
            </P>
        </c:if>
        
         <c:if test="${user.role eq 'admin'}">
            <P>
                <A href="editUsers.html">ViewUsers</A>
            </P>
        </c:if>
        
        <c:if test="${user.role eq 'manager'}">
        </FORM>
        </c:if>
        
    </BODY>
</HTML>