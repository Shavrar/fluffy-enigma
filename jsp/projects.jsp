<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<HTML>
    <HEAD>
        <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <TITLE>projects</TITLE>
        <STYLE>
            TABLE {
                border-collapse: collapse;
                overflow: scroll;
                height: 100px;
                
            }
            TH, TD {
                border: 1px solid black;
                padding: 5px 30px 5px 10px;
            }
        </STYLE>
    </HEAD>
    <BODY>
    
    
        <FORM action="deleteProject.html" method="post">
       
            <TABLE>
                <TR>
                	<c:if test="${user.role eq 'manager'}">
                    <TH>&nbsp;</TH>
                    </c:if>
                    <TH>Client</TH>
                    <TH>Name</TH>
                    <TH>Begining</TH>
                    <TH>Planed</TH>
                    <TH>Real</TH>
                    <TH>Successfully finished</TH>
                       
                </TR>
                <c:forEach var="project" items="${projects}">
                    <TR>
                        <c:if test="${user.role eq 'manager'}"> 
                        <TD>
                            <INPUT type="checkbox" name="idProject"
                                   value="${project.id}">
                        </TD>
                        </c:if>
                        <TD>${project.client}</TD>
                        
                        <TD> 
                        
                        	<c:if test="${user.role eq 'manager'}">                          
                            <A href="editProject.html?idP=${project.id}">
                            </c:if>                           
                                ${project.name} 
                            <c:if test="${user.role eq 'manager'}">                          
                            </A>
                            </c:if>
                        </TD>
                        <TD>${project.begining}</TD>
                        <TD>${project.planed}</TD>
                        <TD>${project.real}</TD>
                        <TD>${project.finished}</TD>
                    </TR>
                </c:forEach>
            </TABLE>
        	<c:if test="${user.role eq 'manager'}">
            <P>
                <A href="editProject.html?ClientName=${ClientName}">Add Project</A>
                <BUTTON type="submit">Delete Project</BUTTON>
            </P>
           </c:if>
        </FORM>
        <A href="index.html">Back</A>
    </BODY>
</HTML>