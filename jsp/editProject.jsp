<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>editProject</TITLE>
    </HEAD>
    <BODY>
    
    	
        <FORM action="saveProject.html" method="post">
			<c:if test="${not empty Fail}">
                <p>Wrong real or planed</p> 
            </c:if>
            <c:if test="${not empty ProjectT}">
                <INPUT type="hidden" name="idProject-t" value="${ProjectT.id}">
            </c:if>
			<c:choose>
   				 <c:when test="${not empty ProjectT}">
		            <INPUT type="hidden" name="client-t" value="${ProjectT.client}">
		
		            <P>Name:</P>
		
		            <INPUT type="text" name="name-t" value="${ProjectT.name}" required>
		            
		            <P>Begining:</P>

            		<INPUT type="text" name="begining-t" value="${ProjectT.begining}"  required pattern="2015-[0-1][0-9]-[0-3][0-9]" placeholder="2015-mm-dd">
            		
            		<P>Planed:</P>

            		<INPUT type="text" name="planed-t" value="${ProjectT.planed}" required pattern="2015-[0-1][0-9]-[0-3][0-9]" placeholder="2015-mm-dd">
            		
            		<P>Real:</P>

            		<INPUT type="text" name="real-t" value="${ProjectT.real}"  placeholder="2015-mm-dd or nothing">
   				 </c:when>
   				 <c:otherwise>
		            <INPUT type="hidden" name="client-t" value="${ClientName}">
		
		            <P>Name:</P>
		
		            <INPUT type="text" name="name-t" value="" required>
		            
		            <P>Begining:</P>

            		<INPUT type="text" name="begining-t" value="" required pattern="2015-[0-1][0-9]-[0-3][0-9]" placeholder="2015-mm-dd">
            		
            		<P>Planed:</P>

            		<INPUT type="text" name="planed-t" value="" required pattern="2015-[0-1][0-9]-[0-3][0-9]" placeholder="2015-mm-dd">
            		
            		<P>Real:</P>
					
            		<INPUT type="text" name="real-t" value="" placeholder="2015-mm-dd or nothing">
    			 </c:otherwise>
			</c:choose>
           
  
            <BUTTON type="submit">Save Project</BUTTON>
            
        </FORM>
        <c:choose>
   				 <c:when test="${not empty ProjectT}">
       				 <A href="projects.html?ClientName=${ProjectT.client}">Back</A>
       			 </c:when>
   				 <c:otherwise>
   				 	 <A href="projects.html?ClientName=${ClientName}">Back</A>
   				 </c:otherwise>
		</c:choose>
   </BODY>
</HTML>