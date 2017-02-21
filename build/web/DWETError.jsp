<%-- 
    Document   : DWETError
    Created on : Feb 20, 2017, 9:01:49 PM
    Author     : David
--%>

<jsp:include page="includes/DWETBanner.jsp" />

<section>
   <h1>Java Error</h1>
<p>Sorry, Java has thrown an exception.</p>
<p>To continue, click the Back button.</p>

<h2>Details</h2>
<p>Type: ${pageContext.exception["class"]}</p>
<p>Message: ${pageContext.exception.message}</p>
</section>

    


<jsp:include page="includes/DWETFooter.jsp" />
