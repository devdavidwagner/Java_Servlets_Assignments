/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package club.admin;

import club.business.Book;
import club.data.BookIO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import static javax.servlet.SessionTrackingMode.URL;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author David
 */
public class DWETAddBookServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
             
        String message = "";
        Boolean error = false;
           Book book = new Book();
           
        String code = request.getParameter("Code");
         if(code == "" )
        {
            message += "Book code is required." + "<br>";
            error = true;
        }
         else
         {
              book.setCode(code);
         }
        String desc = request.getParameter("Desc");
         if(desc == "" )
        {
            message += "Description is required." + "<br>";
            error = true;
        }
         else{
             if(desc.length() < 2)
                {
                      message += "Description must have atleast 2 characters";
                      error = true;
                }
             else
             {
                   book.setDescription(desc);
             }
            
         }
        String quantity = request.getParameter("Quantity");
         if(quantity == "" )
            {
            message += "Quantity is required." + "<br>";
            error = true;
            }
         else{
                if(Integer.parseInt(quantity) < 1)
                 {
                    message += "Quantity must be a positive number";
                    error = true;
                  }
                else
                {
                     book.setQuantity(Integer.parseInt(quantity));
                }
               
         }
        
     
       
       
     
   
        
        
       
        
     
        
        String url = "";
        
        if(error == true)
        {
            request.setAttribute("message", message);
            request.setAttribute("books", book);
            url = "/DWETAddBook.jsp";
            
               getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
        }
        else
        {
            String webInfPath = getServletConfig().getServletContext().getRealPath("WEB-INF");
                
            
          
            BookIO.insert(book, webInfPath + "\\books.txt");
            
            response.sendRedirect("DWETDisplayBooks");
        }
        
        
      
        
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
