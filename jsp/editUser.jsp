<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>editUser</TITLE>
    </HEAD>
    <BODY>
        <FORM action="saveUser.html" method="post">
			
            <c:if test="${not empty userT}">
                <INPUT type="hidden" name="idUser-t" value="${userT.id}">
            </c:if>
			<c:choose>
   				 <c:when test="${not empty userT}">
        			<P>Login:</P>

		            <INPUT type="text" name="login-t" value="${userT.login}" required>
		
		            <P>Password:</P>
		
		            <INPUT type="text" name="password-t" value="${userT.password}" required>
		            
		            <P>Role:</P>
					<c:if test="${userT.role eq 'admin'}">
		                <select name="role-t">
					    <option value="admin" selected>admin</option>
					    <option value="manager">manager</option>
				    </select>
		            </c:if>
		            <c:if test="${userT.role eq 'manager'}">
		                <select name="role-t">
					    <option value="admin" >admin</option>
					    <option value="manager" selected>manager</option>
				    </select>
		            </c:if>
            		
   				 </c:when>
   				 <c:otherwise>
   				 	<P>Login:</P>

		            <INPUT type="text" name="login-t" value="" required>
		
		            <P>Password:</P>
		
		            <INPUT type="text" name="password-t" value="" required>
		            
		            <P>Role:</P>   
		            <select name="role-t">
					    <option value="admin">admin</option>
					    <option value="manager">manager</option>
				    </select>
    			 </c:otherwise>
			</c:choose>
           
  
            <BUTTON type="submit">Save</BUTTON>
            <A href="editUsers.html">Back</A>
        </FORM>
   </BODY>
</HTML>