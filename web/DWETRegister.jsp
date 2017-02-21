<%-- 
    Document   : DWETRegister
    Created on : Jan 30, 2017, 1:50:17 PM
    Author     : dwagner6506
--%>
<jsp:include page="includes/DWETBanner.jsp" />

  
        <section>
        <form action="DWETDisplayMember.jsp" method="post">
            <h1>New Member Registration Form</h1>
            <br>
            <label for="fullName">Full Name:</label>
            <input type="text" id ="fullName" name="fullName" required><br>
            <label for="email" required>Email:</label>
            <input type="text" id ="email" name ="email"><br>
            <label for="phone" >Phone:</label>
            <input type="text" id ="phone" name="phone"><br>

            <label for="prog">IT Program:</label>
            <select id ="prog" name ="prog">
                    <option value="CAD">CAD</option>
                    <option value="CP">CP</option>
                    <option value="CPA">CPA</option>
                    <option value="ITID">ITID</option>
                     <option value="ITSS">ITSS</option>
                    <option value="MSD">MSD</option>
                     <option value="Others">Others</option>
            </select><br>

            <label for="year">Year Level:</label>
                <select id ="year" name ="year">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select><br>
            
            <input type="submit" value="Register Now!" name="Submit">
            <input type="reset" value="Reset" name="Reset">
        
        </form>
        </section>


<jsp:include page="includes/DWETFooter.jsp" />
