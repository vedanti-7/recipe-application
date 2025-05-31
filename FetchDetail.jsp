<html>
    <head>
        <style>
            .center-container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh; 
            }
            
            .registration-container {
                width: 950px;
                height: 500px;
                padding: 20px;
                background-color: #DCDCDC; 
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            }
            
            h2 {
                text-align: center;
                margin-bottom: 20px;
            }
            
            .form-group {
                margin-bottom: 20px;
            }
            
            .form-control {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }
            
            .btn-primary {
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                border: none;
                color: #f1efef;
                border-radius: 4px;
                cursor: pointer;
            }
            
            .btn-primary:hover {
                background-color: #0056b3;
            }
        </style>
    </head>

<%
    String id = request.getParameter("id");
    String Firstname = request.getParameter("firstname");
    String Recipe_name = request.getParameter("rname");
    String Country = request.getParameter("country");
    String Recipe =  request.getParameter("recipe");

%>

    <body>

        <div class="center-container">
            <div class="registration-container">
              <h2>Update Your Details</h2>
              <form action="/JSP_mp/Update.jsp" method="post">
                
                <div class="form-group">
                <input type="hidden" name="id" value="<%= id %>">
                </div>
                
                <div class="form-group">
                    <input type="text" name="firstname" value="<%= Firstname %>">
                </div>
                <div class="form-group">
                    <input type="text" name="rname" value="<%= Recipe_name %>">
                </div>
                <div class="form-group">
                    <input type="text" name="country" value="<%= Country%>">
                  </div>
                  <div class="form-group">
                    <input type="text" name="recipe" value="<%= Recipe%>">
                  </div>
                <button type="submit" class="btn btn-primary">Update</button>
              </form>
            </div>
          </div>

    </body>
</html>