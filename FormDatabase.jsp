<html>
    <head>
        <style>
    
            .recipe {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            }

            .recipe td, .recipe th {
            border: 1px solid #ddd;
            padding: 8px;
            }

            .recipe tr:nth-child(even){background-color: #f2f2f2;}

            .recipe tr:hover {background-color: #ddd;}

            .recipe th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
            }
            
        </style>
    </head>
    <%@ page import="java.sql.*, java.io.*" %>
    <%
    Connection con = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
    
        if (con != null) {
            out.println("Connection successful");
        }
        String Firstname = request.getParameter("firstname");
        String Recipe_name = request.getParameter("rname");
        String Country = request.getParameter("country");
        String Recipe =  request.getParameter("subject");


        PreparedStatement stmt = con.prepareStatement("INSERT INTO recipe (firstname, rname, country, recipe) VALUES (?, ?, ?, ?)");
        stmt.setString(1, Firstname);
        stmt.setString(2, Recipe_name);
        stmt.setString(3, Country);
        stmt.setString(4, Recipe);
    
        int rows = stmt.executeUpdate();
        if (rows > 0) {
            out.println("Inserted successfully");
        } else {
            out.println("Data not inserted successfully");
        }
    
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM recipe");
    
    %>
    

    <table class="recipe">
        <tr>
            <th>Firstname</th>
            <th>Recipe Name</th>
            <th>Country</th>
            <th>Recipe</th>
        </tr>
        <%
        while (rs.next()) {
        %>
        <tr>
            
            <td><%= rs.getString("firstname") %></td>
            <td><%= rs.getString("rname") %></td>
            <td><%= rs.getString("country") %></td>
            <td><%= rs.getString("recipe") %></td>
            <td><%=rs.getInt("id")%></td>

            <td>
                <form action="/JSP_mp/FetchDetail.jsp" method="post">
                    <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                    <input type="hidden" name="firstname" value="<%= rs.getString("firstname") %>">
                    <input type="hidden" name="rname" value="<%= rs.getString("rname") %>">
                    <input type="hidden" name="country" value="<%= rs.getString("country") %>">
                    <input type="hidden" name="recipe" value="<%= rs.getString("recipe") %>">
                    <button type='submit' name='submit' value='update'>Update</button>
                </form>
            </td>

            <td>
                <form action="/JSP_mp/Delete.jsp" method="post">
                    <input type="hidden" name="firstname" value="<%= rs.getString("firstname") %>">
                    <input type="hidden" name="rname" value="<%= rs.getString("rname") %>">
                    <input type="hidden" name="country" value="<%= rs.getString("country") %>">
                    <input type="hidden" name="recipe" value="<%= rs.getString("recipe") %>">
                    <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                    <button type='submit' name='submit' value='delete'>Delete</button>
                </form>
            </td>
        </tr>
        <%
        }
        %>
    </table>
    
    <%
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    %>