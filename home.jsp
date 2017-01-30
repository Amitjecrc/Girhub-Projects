<%--
    Document   : index
    Created on : Jan 12, 2017, 11:01:49 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
        <script src="jquery-3.1.1.min.js"></script>
        <script src="register.js"></script>
       
    
        <link rel="stylesheet" type="text/css" href="header_css.css">
        <link rel="stylesheet" type="text/css" href="menu.css">
        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="stylesheet" type="text/css" href="register.css">
          <link rel="stylesheet" type="text/css" href="footer.css">
       	<link rel="stylesheet" href="css/style.css" type="text/css">
       
              
        <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="admin_popup.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <div class="main">
        <header>
            <span id="logo"><img src="green.png" alt="logo"/></span>
           

            <div id="sub_right_header">
                <span> <ul>
                    <li><a href="admin_login.html" >
                            <span><i class="fa fa-user"></i> Admin</b></span>
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
      <a href="employer_forgot.html">For Get password</a>
          </div>
        <li><a href="#About Us">Advance Search</a> </li>
        <li><a href="#About Us">Services</a> </li>
         <li><a href="#Career Us">Career us</a></li>
         <li><a href="#About Us">About Us</a> </li>
         <li><a href="contact.jsp">Contact Us</a> </li>


</ul>
            </menu>
            <div class="advance_search">
                <table>
                    <tr>
                        <th>Job ID</th>
                        <th>Designation</th>
                        <th>Experience</th>
                        <th>State</th>
                        <th>Diss/city</th>
                        <th>Salary</th>
                    </tr>


                    <tr><td><input type="text" name="jobid"></td>
                        <td><select name="designation"><option>Select</option><option>2</option></select></td>
                        <td><select name="exp"><option>Select</option><option>2</option></select></td>
                        <td><select name="state"><option>Select</option><option>2</option></select></td>
                        <td><select name="Diss/city"><option>Select</option><option>2</option></select></td>
                        <td><select name="Salary"><option>Select</option><option>2</option></select></td>



                </table>
            </div>

            <div id="main">

                <!--Contact Form -->


<div>
    
                <table>
                    
                    <tr>
                        <th>Job ID</th>
                        <th>Title</th>
                        <th>Job Description</th>
                        <th>Experience</th>
                        <th>Location</th>
                        <th>Salary</th>
                    </tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                     <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
                </table>
</div>
           </div>
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
