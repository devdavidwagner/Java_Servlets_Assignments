/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package club.admin;

import club.data.BookIO;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.business.*;
import club.data.*;


/**
 *
 * @author David
 */
public class DWETDisplayBooksServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
         
         Book book = new Book();
         
         
         ArrayList<Book> books = new ArrayList<Book>();
       
         
 
            /* TODO output your page here. You may use following sample code. */
            
             String webInfPath = getServletConfig().getServletContext().getRealPath("WEB-INF");
             
             
            books = BookIO.getBooks(webInfPath + "\\books.txt");
            
       
        request.setAttribute("books", books);
       
         String url = "/DWETDisplayBooks.jsp";
           getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
