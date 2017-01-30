
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="header_css.css">
        <link rel="stylesheet" type="text/css" href="menu.css">
        <link rel="stylesheet" type="text/css" href="main.css">
        <link rel="stylesheet" type="text/css" href="register.css">
        <link rel="stylesheet" type="text/css" href="candidate_login.css">
        <link rel="stylesheet" type="text/css" href="candidate_registration.css">
        <link rel="stylesheet" type="text/css" href="footer.css">
        <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
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
            <menu>
                <ul>
  <li><a href="final_home.jsp">Home</a></li>
  <li class="dropdown">
    
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Candidate</a>
    <div class="dropdown-content">
        <a href="candidate_registration.html" id="candidate_registration">New Registration </a>
      <a href="candidate_login">Candidate Login</a>
      <a href="forgot_candidate.html">Forgot password</a>
    </div>
    <div>s
         <li class="dropdown">
        <a href="javascripts:void(0)" class="dropbtn"> Employer</a>
          <div class="dropdown-content">
       <a href="employer_reg.html">Employer Registration</a>
      <a href="employer_login.html">Employer Login</a>
      <a href="employer_forgot.html">Forgot password</a>
        </div>
        <li><a href="#About Us">Advance Search</a> </li>
        <li><a href="#About Us">Services</a> </li>
         <li><a href="#Career Us">Career With us</a></li>
         <li><a href="#About Us">About Us</a> </li>
         <li><a href="#About Us">Contact Us</a> </li>
         
   
</ul>
            </menu>
           
            <div id="login">
                
    <form action="CanLogin" method="post">
        <div style="height:36px; width: 428px; background-color: #1e7125; margin: 28px 3px 2px 352px; color: white; border-radius: 25px; text-align: center; padding: 20px 0 0 0;">Admin Login page</div>
  <div class="imgcontainer">
      <img src="profile.png" alt="Avatar" class="avatar" >
  </div>

  <div class="container">
    <label><b>Candidate ID</b></label>
    <input type="text" placeholder="Enter Candidate ID " name="cuid" required>
    
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="cpass" required>
        
    <button type="submit"><b>Login</b></button>
    
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button"  class="cancelbtn" ><a href="final_home.jsp"><b>Cancel</b></a></button>
    <span class="psw"> <a href="forgot_candidate.html">Forgot password?</a></span>
  </div>
</form>

            
            
            </div>
             <footer>
                 <h3 align ="center">Copyright &copy;. All rights reserved. Design by <a href="https://www.google.co.in/?gfe_rd=cr&ei=chx3WIbPIsHk8Aeb-pWwAg" target="_blank" title="Place To Right" </h3>
                 
                 <nav>
  <a href="final_home.jsp">HOME</a> |
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
