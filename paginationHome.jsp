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
  
        <link rel="stylesheet" type="text/css" href="register.css">
          <link rel="stylesheet" type="text/css" href="footer.css">
       	<link rel="stylesheet" href="css/style.css" type="text/css">
       
              
        <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="admin_popup.css">
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
        
        <div class="main">
        <header>
            <span id="logo"><img src="green.png" alt="logo"/></span>
           

            <div id="sub_right_header">
                <span> <ul>
                    <li><a href="admin_login.html" >
                            <span><i class="fa fa-user">Admin</i> </b></span>
        </a></li></ul></span>
                </div>
             
        </header>
            
             <menu class="menue">
                <ul>
  <li><a href="home.jsp">Home</a></li>
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
       <a href=employer_reg.html>Employee Registration</a>
      <a href="employer_login.html">Employee Login</a>
      <a href="employer_forgot.html">Forgot password</a>
          </div>
        
        <li><a href="#About Us">Services</a> </li>
         <li><a href="careers.html">Career with us</a></li>
         <li><a href="#About Us">About Us</a> </li>
         <li><a href="contact.jsp">Contact Us</a> </li>


</ul>
            </menu>
            
            <div style="height: 188px; width: 1155px;  padding: 5px 0 0 0;">
                
                <div class="w3-content w3-section" style="max-width:500px">
  <img style="width:1157px; height:188px" class="mySlides" src="images/jp1.jpg" style="width:100%">
  <img style="width:1157px; height:188px" class="mySlides" src="images/jp2.jpg" style="width:100%">
  <img style="width:1157px; height:188px" class="mySlides" src="images/jp3.jpg" style="width:100%">
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
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
                
            </div>
        
    <% 
        List list = (List) session.getAttribute("empList"); 
    %> 
    
    <div style="min-height:400px; width:500px;">
    <table class="pegination_td" style="margin: 3px 150px 0px 80px;width: 990px; boxn-shadow:1px 1px 20px green;"border="1" > 
        <tr> 
            <th style="background-color: green; color: white;">JId</th> 
            <th style="background-color: green; color: white;">JTITLE</th> 
            <th style="background-color: green; color: white;">POST DATE</th>
            <th style="background-color: green; color: white;">JOB DESC</th>
            <th style="background-color: green; color: white;">JMIN  EXP</th>
            <th style="background-color: green; color: white;">JLOCATION</th>
            <th style="background-color: green; color: white;">JSALARY</th>
            <th style="background-color: green; color: white;">INTERVIEW LOCATION</th>
            <th style="background-color: green; color: white;">JINDUSTARY</th>
            <th style="background-color: green; color: white;">VACANCIES</th>
            <th style="background-color: green; color: white;">UG QUALIFICATION</th>
            <th style="background-color: green; color: white;">PG QUALIFICATION</th>
        </tr> 
        <% 
            for (int i = 0; i < list.size(); i++) { 
        %> 
        <tr> 
            <% 
               DataHome empListDTO = (DataHome)list.get(i); 
                    out.println("<td>" + empListDTO.getJid()+ "</td>"); 
                    out.println("<td>" + empListDTO.getJtitle()+ "</td>"); 
                    out.println("<td>" + empListDTO.getPostDate() + "</td>");
                    out.println("<td>" + empListDTO.getJobDesc()+ "</td>");
                    out.println("<td>" + empListDTO.getJminExp()+ "</td>");
                    out.println("<td>" + empListDTO.getJlocation()+ "</td>");
                    out.println("<td>" + empListDTO.getJsalary()+ "</td>");
                    out.println("<td>" + empListDTO.getInterviewLocation()+ "</td>");
                    out.println("<td>" + empListDTO.getJindustary()+ "</td>");
                    out.println("<td>" + empListDTO.getVacancies()+ "</td>");
                    out.println("<td>" + empListDTO.getUgQualification()+ "</td>");
                    out.println("<td>" + empListDTO.getPgQualification()+ "</td>");
                   
            %> 
        </tr> 
        <% 
            } 
        %> 
    </table> 
    <div id="pageNavPosition"></div> 
    </div>
    <script type="text/javascript"><!-- 
            var pager = new Pager('results',10);  
            pager.init();  
            pager.showPageNav('pager', 'pageNavPosition');  
            pager.showPage(1); 
        //--></script> 
      <footer>
                 <h3 align ="center">Copyright &copy;. All rights reserved. Design by <a href="https://www.google.co.in/?gfe_rd=cr&ei=chx3WIbPIsHk8Aeb-pWwAg" target="_blank" title="Place To Right" </h3>

                 <nav>
  <a >HOME</a> |
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