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
<form action="#" id="form" method="post" name="form">
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
    <a href="javascript:void(0)" class="dropbtn">Update Profile</a>
    <div class="dropdown-content">
        <a href="candidate_registration.html" id="candidate_registration">Update Profile</a>
      <a href="candidate_login.html">New Post</a>
      <a href="forgot_candiidate.html">Update Profile</a>
    </div>


         
       
     <li style="float: right;"><form action="CanLogout" method="post"><button>Logout</button></form> </li>


</ul>
            </menu>
            
            <div style="height: 188px; width: 1155px;  padding: 0px 0 0 0;">
                
               
                
                
            </div>
        <%
   
        List list = (List) session.getAttribute("jobList"); 
    %> 
    
    
   <script type="text/javascript">
    document.getElementById("myButton").onclick = function () {
        location.href = "ppp.html";
    };
</script>
    <button id="myBtn">Apply</button>
    
    <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    
            
            
           
            <div id="candidate_registrationn" style="width:500px;">
                
                <form action="" method="GET">
                    <div style="height:36px; width: 253px; background-color: #1e7125; margin: 19px 3px 2px 85px; color: white; border-radius: 25px; text-align: center; padding: 20px 0 0 0;">Apply Form</div>
  

                    <div class="container" >
      <label><b>Candidate ID:</b></label>
    <input type="text" placeholder="Enter your ID" name="c_id" required>
    
    
      
    <label><b>Name</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label><b>E-Mail</b></label><br>
    <input style="width: 411px;" class="employer_select_option_new" type="email" placeholder="Enter a E-Mail" name="email" required><br>
    
    <label><b>Contact</b></label>
    <input type="text" placeholder="Enter a contact" name="contact" required>
   
   <br>
    <label><b>Job ID:</b></label>
    <input type="text" placeholder="Enter job ID" name="j_id" required>
        
    <label><b>Resume File</b></label>
    <input class="employer_select_option_new" type="file" accept="application/msword" placeholder="Select a file " name="file" required>
    
    
    
    <button type="submit">Apply</button>
    
  </div>

  
</form>

            
            
            </div>
            
</div>
  </div>



<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
    <div>
        <table>
            <tr>
                <td>Job ID</td>
                <td><input type="text" name="jids" required/></td>
                <td>J0b Profile</td>
                <td><select name="j_profile"><option>Software Developer</option><option>Business Analyst</option><option>Software Tester</option><option>Marketing Analyst</option><option>Application Programmer</option><option>Human Resource</option><option>Data Analyst</option><option>Technical Recruiter</option><option>Database Administrator</option></select></td>
                <td>Location</td>
                <td><select name="j_location"><option>Noida</option><option>Jaipur</option><option>Bangalore</option><option>Delhi</option><option>Pune</option><option>Chennai</option><option>Ahmedabad</option><option>Hyderabad</option></select></td>
                <td>Experience</td>
                <td><select name="j_exp"><option>0</option><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option>></select></td>
                <td>Salary</td>
                <td><select name="j_salary"><option>1.2</option><option>1.5</option><option>1.8</option><option>2.0</option><option>2.4</option><option>2.8</option><option>3.0</option><option>3.6</option><option>4.8</option><option>6.0</option></select></td>
            </tr>
        </table>
    </div>
    
    
    
    <div style="min-height:400px; width:500px;">
    <table class="pegination_td" style="margin: 3px 150px 0px 0px;width: 990px; boxn-shadow:1px 1px 20px green;"border="1" > 
        <tr> 
            <th style="background-color: green; color: white; width: 50px;">JobId</th> 
            <th style="background-color: green; color: white;">TITLE</th> 
            <th style="background-color: green; color: white;">POST DATE</th>
            <th style="background-color: green; color: white; ">DESCRIPTION</th>
            <th style="background-color: green; color: white;">EXPERIENCE</th>
            <th style="background-color: green; color: white;">VACANCIES</th>
            <th style="background-color: green; color: white;">QUALIFICATION</th>
           
        </tr> 
        <% 
            for (int i = 0; i < list.size(); i++) { 
        %> 
        <tr> 
            <% 
               DataHome jobListDTO = (DataHome)list.get(i); 
                    out.println("<td>" + jobListDTO.getJid()+ "</td>"); 
                    out.println("<td>" + jobListDTO.getJtitle()+ "</td>"); 
                    out.println("<td>" + jobListDTO.getPostDate() + "</td>");
                    out.println("<td>" + jobListDTO.getJobDesc()+ "</td>");
                    out.println("<td>" + jobListDTO.getJminExp()+ "-"+ jobListDTO.getJmaxexp()+ "</td>");
                    out.println("<td>" + jobListDTO.getVacancies()+ "</td>");
                    out.println("<td>" + jobListDTO.getUgQualification()+ ","+ jobListDTO.getPgQualification()+ "</td>");
                    out.println("<td><button id='myBtn'>Apply</button></td>");
                   
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
    <% 
response.setHeader("Cache-control","no-store"); //HTTP 1.1 
response.setHeader("Pragma","no-cache"); //HTTP1.0 
response.setDateHeader("Expire",0); //prevents caching at the proxy server 
//response.sendRedirect("final_home.jsp");
%> 
    </body> 
    </html>