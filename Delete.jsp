
<!-- <%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<%
    
   

    try {
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
        
        if (con != null) {
            
            PreparedStatement stmt = con.prepareStatement("UPDATE recipe SET firstname=?, lastname=?, country=? WHERE recipe=?");
            stmt.setString(1, request.getParameter("firstname"));
            stmt.setString(2, request.getParameter("lastname"));
            stmt.setString(3, request.getParameter("country"));
            stmt.setString(4, request.getParameter("recipe"));
            
            
            int result = stmt.executeUpdate();
            
            
            if (result > 0) {
                out.println("Data updated successfully");
            } else {
                out.println("Error in updating data: No matching recipe found.");
            }
        } else {
            out.println("Connection unsuccessful");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%> -->

<html>
    <head>
        <style>
            .center-container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background-color: #f0f0f0; 
            }
            
            .message-box {
                padding: 20px;
                background-color: #4CAF50; 
                color: white; 
                border-radius: 8px;
                text-align: center;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            }

            h1 {
                font-family: Arial, sans-serif;
                font-size: 24px;
                margin: 0;
            }
        </style>
    </head>
    <body>

<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException" %>
<%


try
{
    String RecipeName = request.getParameter("rname");
    int id = Integer.parseInt(request.getParameter("id"));

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
    if(con!=null)
    {
        out.println("Connection successful");
    }
    else
    {
        out.println("Connection unsuccessful");
    }
    PreparedStatement stmt = con.prepareStatement("DELETE FROM recipe WHERE id=?");
    stmt.setInt(1, id);


    int result = stmt.executeUpdate();
%>
    <div class="center-container">
        <div class="message-box">
            <h1>
                <% if(result>0){ %>
                    Your Data has been deleted successfully
                <% } else { %>
                    Error in deleting data
                <% } %>
            </h1>
        </div>
    </div>
<%
}
catch(Exception e)
{
    out.println(e.getMessage());
}
%>
</body>
</html>