<%-- 
    Document   : DWETDisplayMember
    Created on : Jan 30, 2017, 2:20:11 PM
    Author     : dwagner6506
--%>


<jsp:include page="includes/DWETBanner.jsp" />



<section>
    <h1>Thanks for joining our club!</h1>
    
    <p>Here is the information you entered:</p><br>
    <label for="fullName">Full Name:</label> <span id="fullName">${param.fullName}</span><br> 
    <label for="email">Email:</label> <span id="email">${param.email}</span> <br>
    <label for="phone">Phone:</label> <span id="phone">${param.phone}</span> <br>
    <label for="prog">IT Program:</label> <span id="prog">${param.prog}</span> <br>
    <label for="year">Year Level:</label> <span id="year"> ${param.year}</span> <br>
    <p>To register another member, click on the back button in your 
        browser or the return button shown below.</p>
    
    <form action="DWETRegister.jsp">
        <input type="submit" value="Return">
    </form>
  
</section>



<jsp:include page="includes/DWETFooter.jsp" />
