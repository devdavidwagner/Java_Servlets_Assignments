<%-- 
    Document   : DWETAddBook.jsp
    Created on : Feb 15, 2017, 2:50:12 PM
    Author     : David
--%>

<jsp:include page="includes/DWETBanner.jsp" />



<section>
           <h1>Add a Book</h1>
    <p style="color:red; font-weight: bold;"><i>${message}</i></p>
    <form action ="DWETAddBook" method="post">
        
        <label for="Code">Code:  </label>
            <input type="text" name="Code" value ="${books.code}" style="width: 100px;">    
      <br>
        <label for="Desc">Description:  </label>
            <input type="text" name="Desc"  value ="${books.description}" style="width: 250px;">  
       <br> 
        <label for="Quantity">Quantity: </label> 
            <input type="text" name="Quantity"  value ="${books.quantity}" style="width: 50px;"> 
       <br> 
        <input type="Submit" value ="Save" style="float:left; margin-left: 119px;"/> 
      
       
        
        
        
    </form>
    

      <form action="DWETDisplayBooks" >
         <input type="Submit" value ="Cancel" /> 
     </form>
    
    
    
    
    
    
</section>





<jsp:include page="includes/DWETFooter.jsp" />