<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<style>
      body
     {
       background-repeat:no-repeat;
       background-size:cover;
       height:100vh;

     }
      #accordion
    {
       text-align:center;
       width:50%;
       margin:0 auto;
       height:500px;
       padding :150px;
       color:white;
       font-family:arial;

    }
    h1{
    background-color:black;
    color:white;
    text-align:center;
    }
      </style>
</head>
<body>
<h1>Register Today</h1>
   <div id="accordion">
   
       
       
         <div>
             <span> <button class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          Sign Up
             </button>
       </span> 
      <span> <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          Sign In
           </button>
           </span>
         </div>
          <form action="hello" method="post" >
               <div id="collapseThree" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
		           EmaiId: <input type="text" class="form-control" id="Email" placeholder="Enter email" name="Email"/><br />
			       Name :<input type="text" class="form-control" id="Name" placeholder="Enter name" name="Name"/><br />
			       Password:<input type="password" class="form-control" id="Password" placeholder="Enter password" name="Password"/><br />
			       Mobile:<input type="text" class="form-control" id="Phone" placeholder="Enter your mobile no" name="Phone"/><br />
			
			       <input type="submit" value="Submit" onclick="return ValidateEmail()" />
		      ${message}
		     </div>
	     </form>


          <form action="Login" method="post">
          
          
             <div id="collapseFour" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                   EmailId : <input type="text" class="form-control" id="email" placeholder="Enter your valid mailId" name="email"/><br />
                   Password :<input type="password" class="form-control" id="password" placeholder="Enter your password" name="password"/><br />
                 <div>
                <span><input type="button" value="Forget password"/></span>
                <span><input type="submit" value="Login"/></span>
                 </div>
             </div>
          </form>
            <script>
     function ValidateEmail()
     {
    	 var name1=document.getElementById("Name").value;
    	 var email1=document.getElementById("Email").value;
    	 var password1=document.getElementById("Password").value;
    	 var mobile1=document.getElementById("Phone").value;
    	 
    	 var mailFormat=/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    	 if(name1 != "" && password1 != "" && mobile1!="")
    	 {
    	         if(email1.match(mailFormat))
    		     {
    		       if(mobile1.length==10)
    			   {
    			     return true;
    			   }
    		      else 
    			   {
    		           alert("Contact no should have the length 10");
    		           return false;
    			   }
    		    }
    	       else
    		     {
    		       alert("enter the valid mailid");
    		       return false;
    		     }
       }
       else
    	 {
    	 alert("Enter the data");
    	 return false;
     }}
     </script>
   
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
           
</body>
</html>