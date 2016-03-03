<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>users</TITLE>
        <STYLE>
            TABLE {
                border-collapse: collapse;
                overflow: scroll;
                height: 100px;
                
            }
            TH, TD {
                border: 1px solid black;
                padding: 5px 30px 5px 10px;
                height: 25px;
            }
        </STYLE>
    </HEAD>
    <BODY>
    
    
        <FORM action="deleteUser.html" method="post">
       
            <TABLE>
                <TR>
                    <TH>&nbsp;</TH>
                    <TH>Login</TH>
                    <TH>Password</TH>
                    <TH>Role</TH>   
                </TR>
                <c:forEach var="usert" items="${users}">
                    <TR>
                        
                        <TD>
                            <INPUT type="checkbox" name="idUser"
                                   value="${usert.id}">
                        </TD>
                        
                        <TD>                           
                            <A href="editUser.html?idU=${usert.id}">                           
                                ${usert.login}                           
                            </A>
                        </TD>
                        <TD>${usert.password}</TD>
                        <TD>${usert.role}</TD>
                    </TR>
                </c:forEach>
            </TABLE>
        
            <P>
                <A href="editUser.html">Add</A>
                <BUTTON type="submit">Delete</BUTTON>
            </P>
           
        </FORM>
        <A href="index.html">Back</A>
    </BODY>
</HTML>