<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>edit</TITLE>
    </HEAD>
    <BODY>
        <FORM action="saveClient.html" method="post">

            <c:if test="${not empty client}">
                <INPUT type="hidden" name="id-t" value="${client.id}">
            </c:if>
            <c:choose>
            
				<c:when test="${not empty client}">
            		<P>Name:</P>

            		<INPUT type="text" name="name-t" value="${client.name}">

            		<P>Adress:</P>

            		<INPUT type="text" name="adress-t" value="${client.adress}">
            		
             	</c:when>
            	<c:otherwise>
        			<P>Name:</P>

            		<INPUT type="text" name="name-t" value="">

            		<P>Adress:</P>

            		<INPUT type="text" name="adress-t" value="">
    			</c:otherwise>
          </c:choose>  
            <BUTTON type="submit">Save</BUTTON>
            <A href="index.html">Back</A>
        </FORM>
   </BODY>
</HTML>