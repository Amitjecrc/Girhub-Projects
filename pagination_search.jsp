<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
        pageEncoding="ISO-8859-1"%> 
    <%@page import="java.util.List"%> 
    <%@page import="Ptr.*"%> 
     
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
    <html> 
    <head> 
            <link rel="stylesheet" type="text/css" href="menu.css">
        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="stylesheet" type="text/css" href="header_css.css">
        <link rel="stylesheet" type="text/css" href="pagination_table.css">
        <link rel="stylesheet" type="text/css" href="candidate.css">
        <link rel="stylesheet" type="text/css" href="register.css">
        <link rel="stylesheet" type="text/css" href="footer.css">
       	<link rel="stylesheet" href="css/style.css" type="text/css">     
        <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="popup.css" rel="stylesheet">
        <script src="popup.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  

    </style> 
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
    <title>Homepage </title> 
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
     
    <body style="background-color:white;">
   <div style="width:1160px; height: auto;background-color: whitesmoke; margin: 0 0 0 100px; bordecr: 1px solid black; box-shadow: 1px 1px 35px black;">
      <div  id="body" style="overflow:hidden;">
<div id="abc">
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<form action="AdminLogin" id="form" method="post" name="form">
<img id="close" src="images/close.png" onclick ="div_hide()">
<h2>LOG IN</h2>
<hr>
<input id="emailid" name="emailid" placeholder="Email Id" type="text">
<input id="password" name="password" placeholder="Password" type="text"><br><br>
<center><a href="javascript:%20check_empty()" id="submit"><b>ENTER<b></a></center>
</form>
</div>
<!-- Popup Div Ends Here -->
</div> 
     </div>
       <!--<div class="background">
  <div class="transbox"> -->
        <div>
        <header>
            <span id="logo"><img src="green.png" alt="logo"/></span>
            <div id="sub_right_header">
               <span>
                    <ul>
                    <li><a href="#" >
                            <span><button  id="popup" onclick="div_show()">Admin</button></span>
        </a></li></ul></span>
                </div>
             
        </header>
            
             <menu class="menue">
                <ul>
  <li><a href="final_home.jsp">Home</a></li>
  <li class="dropdown">
    

     <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Candidate</a>
    <div class="dropdown-content">
        <a href="candidate_registration.html" id="candidate_registration">Candidate Registration </a>
      <a href="candidate_login.html">Candidate Login</a>
      <a href="forgot_candiidate.html">Forgot password</a>
    </div>

         <li class="dropdown">
        <a href="javascripts:void(0)" class="dropbtn"> Employer</a>
          <div class="dropdown-content">
       <a href=employer_reg.html>Employer Registration</a>
      <a href="employer_login.html">Employer Login</a>
      <a href="employer_forgot.html">Forgot password</a>
          </div>
        
        <li><a href="service.html">Services</a> </li>
         <li><a href="career.html">Career with us</a></li>
         <li><a href="about.html">About Us</a> </li>
         <li><a href="contact.jsp">Contact Us</a> </li>


</ul>
            </menu>
            
            <div style="height: 188px; width: 1155px;  padding: 0px 0 0 0;">
                
                <div class="slider" style="max-width:500px">
  <img style="width:1160px; height:188px" class="mySlides" src="images/11.png" style="width:100%">
  <img style="width:1160px; height:188px" class="mySlides" src="images/jp1.png" style="width:100%">
  <img style="width:1160px; height:188px" class="mySlides" src="images/jp2.jpg" style="width:100%">
  <img style="width:1160px; height:188px" class="mySlides" src="images/jp3.png" style="width:100%">
</div>
                <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 1000); // Change image every 2 seconds
}
</script>
                
            </div>
        <%
   
        List list = (List) session.getAttribute("searchList"); 
    %> 
    
    <div style="min-height:400px; width:500px;">
    <table class="pegination_td" style="margin: 3px 150px 0px 0px;width: 990px; boxn-shadow:1px 1px 20px green;"border="1" > 
        <tr> 
            <th style="background-color: green; color: white;">Job Id</th> 
            <th style="background-color: green; color: white;">TITLE</th> 
            <th style="background-color: green; color: white;">POST DATE</th>
            <th style="background-color: green; color: white; width: 50px;">DESCRIPTION</th>
            <th style="background-color: green; color: white;">EXPERIENCE</th>
            <th style="background-color: green; color: white;">VACANCIES</th>
            <th style="background-color: green; color: white;">QUALIFICATION</th>
           
        </tr> 
        <% 
            for (int i = 0; i < list.size(); i++) { 
        %> 
        <tr> 
            <% 
               DataSearch searchListDTO = (DataSearch)list.get(i); 
                    out.println("<td>" + searchListDTO.getJid()+ "</td>"); 
                    out.println("<td>" + searchListDTO.getJtitle()+ "</td>"); 
                    out.println("<td>" + searchListDTO.getPostDate() + "</td>");
                    out.println("<td>" + searchListDTO.getJobDesc()+ "</td>");
                    out.println("<td>" + searchListDTO.getJminExp()+ "-"+ searchListDTO.getJmaxexp()+ "</td>");
                    out.println("<td>" + searchListDTO.getVacancies()+ "</td>");
                    out.println("<td>" + searchListDTO.getUgQualification()+ ","+ searchListDTO.getPgQualification()+ "</td>");
                    
                   
            %> 
        </tr> 
        <% 
            } 
        %> 
    </table> 
    <div id="pageNavPosition"></div> 
    </div>
    <script type="text/javascript"><!-- 
            var pager = new Pager('results',3);  
            pager.init();  
            pager.showPageNav('pager', 'pageNavPosition');  
            pager.showPage(1); 
        //--></script> 
      <footer>
                 <h3 align ="center">Copyright &copy;. All rights reserved. Design by <a href="https://www.google.co.in/?gfe_rd=cr&ei=chx3WIbPIsHk8Aeb-pWwAg" target="_blank" title="Place To Right" </h3>

                 <nav>
  <a href="final_home.jsp">HOME</a> |
  <a href="contact.jsp">CONTACT US </a> |
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