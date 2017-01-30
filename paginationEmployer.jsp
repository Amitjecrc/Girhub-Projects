
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
    #button1 form{
        width: 1073;
    }

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 80%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
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
        <div class="main" >
            
            <header>
            <span id="logo"><img src="" alt="logo"/></span>
            <div id="sub_right_header">
                
                </div>
        </header>
        
    <% 
        List list = (List) session.getAttribute("employerDetails"); 
    %> 
     
    <table border="1" id="results"> 
        <tr> 
          <th style="background-color:green; color: white;"> Name</th>
          <th style="background-color:green; color: white;">E-Mail</th>
          <th style="background-color:green; color: white;">Password</th>
          <th style="background-color:green; color: white;">Contact</th>
          <th style="background-color:green; color: white;">State</th>
          <th style="background-color:green; color: white;">City</th>
          <th style="background-color:green; color: white;">Country</th>
          <th style="background-color:green; color: white;">Company name</th>
          
         
           
        </tr> 
        <% 
            for (int i = 0; i < list.size(); i++) { 
        %> 
        <tr> 
            <% 
               DataEmployer employerDetailsDTO = (DataEmployer)list.get(i); 
                    out.println("<td>" + employerDetailsDTO.getEname()+ "</td>"); 
                    out.println("<td>" + employerDetailsDTO.getEemail()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEpass()+ "</td>"); 
                    out.println("<td>" + employerDetailsDTO.getEcontact() + "</td>");
                    out.println("<td>" + employerDetailsDTO.getEstate()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEcity()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEcountry()+ "</td>");
                    out.println("<td>" + employerDetailsDTO.getEmpname()+ "</td>");
                    
                  
                    
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
                  <form  action="download" method="post">
                <center> <tr> <td><button type="submit">DOWNLOAD</button></td></center>
                </form>
  <!-- Trigger/Open The Modal -->
<button id="myBtn">DELETE</button>
<form action ="deleted" method ="get">
    <div id="myModal" class="modal">
    <div class="modal-content" style="width: 400px; height: auto; box-shadow: 1px 1px 60px black;">
      <div class="modal-header">
      <span class="close">&times;</span>
      <center><h2 style="height:50px;">Enter the Employer Name</h2></center>
    </div>
    <div class="modal-body" style="height:100px;">
        <input style="height:30px; width: 362px; margin-bottom: 8px; margin-top: 8px;" type="text" placeholder="enter the employer name " name="ename" >

 <center> <tr> <td><button type="submit">DELETE</button></td></center>
    </div>
                </form>
   
  </div>

</div>
              </ul>
                   </div>
    <footer>
                 <h3 align ="center">Copyright &copy;. All rights reserved. Design by NETRIX TECHNOLOGY <a href="https://www.google.co.in/?gfe_rd=cr&ei=chx3WIbPIsHk8Aeb-pWwAg" target="_blank" title="Place To Right" </h3>
                 
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
    </body> 
    </html>