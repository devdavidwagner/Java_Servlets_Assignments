<%-- 
    Document   : DWETDisplayBooks
    Created on : Feb 15, 2017, 11:06:52 AM
    Author     : David
--%>

<%@page import="club.business.Book"%>
<%@page import="java.util.ArrayList"%>
<jsp:include page="includes/DWETBanner.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<section>
    <h1>List of Books</h1>
    
    

        <table>
       
            <c:forEach items="${books}" var="row">
                <tr>
                    <td><c:out value="${row.code}"/></td>
                    <td><c:out value="${row.description}"/></td>
                    <td><c:out value="${row.quantity}"/></td>
                </tr>
            </c:forEach>
              
        </table>
    <form action="DWETAddBook.jsp">
        <input type="Submit" value ="Add Book"/> 
    </form>
        


</section>

<jsp:include page="includes/DWETFooter.jsp" />