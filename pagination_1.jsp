<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
        pageEncoding="ISO-8859-1"%> 
    <%@page import="java.util.List"%> 
    <%@page import="Ptr.*"%> 
     
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
    <html> 
    <head> 
         <link rel="stylesheet" type="text/css" href="header_css.css">
         <link rel="stylesheet" type="text/css" href="footer.css">
           <link rel="stylesheet" type="text/css" href="empDetails.css">
           <link rel="stylesheet" type="text/css" href="button.css">
           <link rel="stylesheet" type="text/css" href="main.css">
    <style type="text/css"> 
    .pg-normal { 
        color: #0000FF; 
        font-weight: normal; 
        text-decoration: none; 
        cursor: pointer; 
    } 
     
    .pg-selected { 
        color: #800080; 
        font-weight: bold; 
        text-decoration: underline; 
        cursor: pointer; 
    } 
    h1{
        color:green;
    }
    </style> 
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
    <title>Pagination Using Java Script </title> 
    </head> 
     
    <script type="text/javascript"> 
    function Pager(tableName, itemsPerPage) { 
        this.tableName = tableName; 
        this.itemsPerPage = itemsPerPage; 
        this.currentPage = 1; 
        this.pages = 0; 
        this.inited = false; 
         
        this.showRecords = function(from, to) {         
            var rows = document.getElementById(tableName).rows; 
            // i starts from 1 to skip table header row 
            for (var i = 1; i < rows.length; i++) { 
                if (i < from || i > to)   
                    rows[i].style.display = 'none'; 
                else 
                    rows[i].style.display = ''; 
            } 
        } 
         
        this.showPage = function(pageNumber) { 
         if (! this.inited) { 
          alert("not inited"); 
          return; 
         } 
     
            var oldPageAnchor = document.getElementById('pg'+this.currentPage); 
            oldPageAnchor.className = 'pg-normal'; 
             
            this.currentPage = pageNumber; 
            var newPageAnchor = document.getElementById('pg'+this.currentPage); 
            newPageAnchor.className = 'pg-selected'; 
             
            var from = (pageNumber - 1) * itemsPerPage + 1; 
            var to = from + itemsPerPage - 1; 
            this.showRecords(from, to); 
        }    
         
        this.prev = function() { 
            if (this.currentPage > 1) 
                this.showPage(this.currentPage - 1); 
        } 
         
        this.next = function() { 
            if (this.currentPage < this.pages) { 
                this.showPage(this.currentPage + 1); 
            } 
        }                         
         
        this.init = function() { 
            var rows = document.getElementById(tableName).rows; 
            var records = (rows.length - 1);  
            this.pages = Math.ceil(records / itemsPerPage); 
            this.inited = true; 
        } 
     
        this.showPageNav = function(pagerName, positionId) { 
         if (! this.inited) { 
          alert("not inited"); 
          return; 
         } 
         var element = document.getElementById(positionId); 
          
         var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> « Prev </span> | '; 
            for (var page = 1; page <= this.pages; page++)  
                pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> | '; 
            pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next »</span>';             
             
            element.innerHTML = pagerHtml; 
        } 
    } 
    </script> 
     
    <body> 
     
        <center> <h1>Employer Details</h1></center>
        <div class="main">
            <header>
            <span id="logo"><img src="" alt="logo"/></span>
            <div id="sub_right_header">
                <span>
                    <ul>
                    <li><a href="admin_login.html" >
                            <span><i class="fa fa-user"></i> <b>Admin</b></span>
        </a></li></ul></span>
                </div>
        </header>
        
    <% 
        List list = (List) session.getAttribute("employerDetails"); 
    %> 
     
    <table  width = 1150px border="1" id="results"> 
        <tr> 
          <th style="background-color:green; color: white;"> Name</th>
          <th style="background-color:green; color: white;">E-Mail</th>
          <th style="background-color:green; color: white;">Contact</th>
          <th style="background-color:green; color: white;">state</th>
          <th style="background-color:green; color: white;">city</th>
          <th style="background-color:green; color: white;">country</th>
          <th style="background-color:green; color: white;">company name</th>
          <th style="background-color:green; color: white;">Password</th>
            
        </tr> 
        <% 
            for (int i = 0; i < list.size(); i++) { 
        %> 
        <tr> 
            <% 
               Data employerDetailsDTO = (Data)list.get(i); 
                    out.println("<td>" + employerDetailsDTO.getEname()+ "</td>"); 
                    out.println("<td>" + employerDetailsDTO.getEpass()+ "</td>"); 
                    out.println("<td>" + employerDetailsDTO.getEcontact() + "</td>");
                    out.println("<td>" + employerDetailsDTO.getEstate()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEcity()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEcountry()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEmpname()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEemail()+ "</td>");
                    
            %> 
        </tr> 
        <% 
            } 
        %> 
    </table> 
    <div id="pageNavPosition"></div> 
     
    <script type="text/javascript"><!-- 
            var pager = new Pager('results',5);  
            pager.init();  
            pager.showPageNav('pager', 'pageNavPosition');  
            pager.showPage(1); 
        //--></script> 
    
     <div id="button1">
                 <ul>     
                  <form action="download" method="post">
                <center> <tr> <td><button type="submit" > DOWNLOAD</button></td></center>
                </form>
                <center><td><button type="button" onclick="">DELETE</button></td></tr></center>
                 </ul>
             </div>
    <footer>
                 <h3 align ="center">Copyright &copy;. All rights reserved. Design by <a href="https://www.google.co.in/?gfe_rd=cr&ei=chx3WIbPIsHk8Aeb-pWwAg" target="_blank" title="Place To Right" </h3>
                 
                 <nav>
  <a >HOME</a> |
  <a >CONTACT US </a> |
  <a >SITE MAP </a> |
  <a >ABOUT US</a> |
  <a>FOLLOW US </a>
  <a link href="https://en-gb.facebook.com/login/"> <i class="fa fa-facebook-square"></a></i>
  <a link href="https://www.google.com/"><i class="fa fa-google"></i>
      <a link href="https://www.twitter.com/"><i class="fa fa-twitter-square"></i>
 
</nav>
</footer>
        </div>
     
    </body> 
    </html>