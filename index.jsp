<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <style>

      * {
  box-sizing: border-box;
}

.form-header {
  display: flex;
  justify-content: center;   /* Center horizontally */
  align-items: center;       /* Center vertically */
  padding: 20px;  
  width: 100%;
  height: 100px;  /* Adjust height as needed */
  margin: 0 auto;
  margin-bottom: 20px;
  background-color: #f4f0f0;
  }
  
.form-header h2 {
    color: #333;
    margin: 0; /* Remove any default margin */
  }

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f4f0f0;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row::after {
  content: "";
  display: table;
  clear: both;
}


.title-container {
    display: flex;
    align-items: center;   /* Vertically center the logo and title */
    justify-content: center;  /* Center the title-content horizontally */
    padding: 20px;
    background-color: #f4f0f0;  /* Specific background color */
    border-radius: 10px;  /* Rounded corners */
    position: relative;   /* For positioning the logo */
    height: 150px;  /* Adjust height if necessary */
    margin-top: 40px;
}

.logo-img {
    position: absolute;
    left: 20px;  /* Align the logo to the left of the container */
    width: 130px;  /* Adjust width for the logo */
    height: auto;
}

.title-content {
    text-align: center;  /* Center the title and subtext */
    flex: 1;  /* Allow title content to take available space */
}

.title-content h2 {
    margin: 0;
    font-size: 2rem;
    color: rgb(62, 62, 62);  /* Adjust the color of the title */
}

.subtext {
    font-size: 1rem;
    color: rgb(62, 62, 62);  /* Adjust the color of the subtext */
    margin-top: 10px;
}

body, html {
    height: 100%;
    font-family: Arial, sans-serif;
    background-color: #ae9e91;
}


    </style>
</head>
<body>
    <div class="image-container">
        <div class="quote">
            <h1>Add taste to your life, </h1>
            <h1>Make delicious food!</h1>
        </div>
    </div>
    


    <div class="title-container">
      <img src="logo/bitelogo1.png" alt="Logo" class="logo-img">
      <div class="title-content">
        <h2>Choose your Menu to Cook</h2>
        <p class="subtext">Indulge into the recipes of perfection</p>
      </div>
    </div>

    <!-- <div class="text-container">
      <div class="title-with-logo">
        <img src="logo/bitelogo1.png" alt="Logo" class="logo-img">
        <h2>Choose your Menu to Cook</h2>
      </div>
        <p class="subtext">Indulge into the recipes of perfection</p>
    </div> -->

    <!-- Image gallery container -->
    <div class="gallery-container">
        <div class="gallery-item">
            <a href="/JSP_mp/dinners">
                <img src="https://images.pexels.com/photos/541216/pexels-photo-541216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" alt="Image 1">
            </a>
            <div class="image-caption">
                <p>Dinners</p>
            </div>
        </div>

        <div class="gallery-item">
            <a href="/JSP_mp/ref">
                <img src="https://thumbs.dreamstime.com/b/cold-fruit-berry-beverages-assortment-dark-background-cold-fruit-berry-beverages-assortment-dark-background-118085476.jpg" alt="Image 2">
            </a>
            <div class="image-caption">
                <p>Refreshments</p>
            </div>
        </div>

        <div class="gallery-item">
            <a href="/JSP_mp/des">
                <img src="https://pastrychefonline.com/wp-content/uploads/2020/07/chocolate-panna-cotta-vertical.jpg" alt="Image 3">
            </a>
            <div class="image-caption">
                <p>Desserts</p>
            </div>
        </div>
    </div>

    <%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
    <%
    Connection con = null;
    int id = 0;  
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
        
        if (con != null) {
            out.println("Connection successful");
        }
    }
    catch(Exception e){
      out.println(e.getMessage());
    }
    %>
    <div class="form-header">
      <h2>Showcase your flavour on Bite !</h2>
    </div>

    <div class="container">
      <form action="FormDatabase.jsp">
      <div class="row">
        <div class="col-25">
          <label for="fname">First Name</label>
        </div>

        <div class="col-75">
          <input type="text" id="fname" name="firstname" placeholder="Your name..">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="lname">Recipe Name</label>
        </div>
        <div class="col-75">
          <input type="text" id="rname" name="rname" placeholder="Your last name..">
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="country">Country</label>
        </div>
        <div class="col-75">
          <select id="country" name="country">
            <option value="usa">India</option>
            <option value="australia">Australia</option>
            <option value="canada">Canada</option>
            <option value="usa">USA</option>
          </select>
        </div>
      </div>
      <div class="row">
        <div class="col-25">
          <label for="subject">Recipe</label>
        </div>
        <div class="col-75">
          <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
        </div>
      </div>
      <br>
      
      <input type="hidden" name="id">

      <div class="row">
        <input type="submit" value="Submit">
      </div>
      </form>
    </div>

   

    <footer class="footer">
        <div class="footer__addr">
          <h1 class="footer__logo">Find us here</h1>
              
          <h2>Contact</h2>
          
          <address>
            5534 Somewhere In. The World 22193-10212<br>
                
            <a class="footer__btn" href="mailto:Bite@gmail.com">Email Us</a>
          </address>
        </div>
        
        <ul class="footer__nav">
          <li class="nav__item">
            <h2 class="nav__title">Media</h2>
      
            <ul class="nav__ul">
              <li>
                <a href="#">Facebook</a>
              </li>
      
              <li>
                <a href="#">Instagram</a>
              </li>
                  
              <li>
                <a href="#">Twitter</a>
              </li>
            </ul>
          </li>
          
          <li class="nav__item nav__item--extra">
            <h2 class="nav__title">Cooking Tools & Techniques</h2>
            
            <ul class="nav__ul nav__ul--extra">
              <li>
                <a href="#">Blenders & Mixers</a>
              </li>
              
              <li>
                <a href="#">Kitchen Gadgets</a>
              </li>
              
              <li>
                <a href="#">Baking Tools</a>
              </li>
              
              <li>
                <a href="#">Cooking Techniques</a>
              </li>
              
              <li>
                <a href="#">Knives & Cutlery</a>
              </li>
              
              <li>
                <a href="#"></a>
              </li>
            </ul>
          </li>
          
          <li class="nav__item">
            <h2 class="nav__title">Legal</h2>
            
            <ul class="nav__ul">
              <li>
                <a href="#">Privacy Policy</a>
              </li>
              
              <li>
                <a href="#">Terms of Use</a>
              </li>
              
              <li>
                <a href="#">Sitemap</a>
              </li>
            </ul>
          </li>
        </ul>
        
        <div class="legal">
          <p>&copy; 2019 Something. All rights reserved.</p>
          
        </div>
      </footer>
</body>
</html>