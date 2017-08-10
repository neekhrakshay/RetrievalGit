<%-- 
    Document   : display
    Created on : 10 Aug, 2017, 1:29:21 AM
    Author     : Akshay Neekhra
--%>
<%@page import ="java.sql.*" %>
<% Class.forName ("com.mysql.jdbc.Driver"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deposit</title>
    </head>
    <body>
        <h1>Deposit</h1>
          <%! public class user{
            String URL = "jdbc:mysql://localhost:3306/user";
            String USERNAME = "root";
            String  Password = "root";
            
            Connection connection = null;
            PreparedStatement selectUser = null;
            ResultSet resultset = null;
            
            public user()
            {
                try{
                    connection = DriverManager.getConnection(URL, USERNAME, Password);
                    selectUser =connection.prepareStatement("Select a.Name,b.Account"
                    + "FROM user.Name a,user.Account b"
                    + "where a.Name = ?" + " AND b.Account = ?");
                    
                } catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
            public ResultSet getUser(String Name,int Account)
            {
                try {
                    selectUser.setString(1,Name);
                    selectUser.setInt(2,Account);
                
                    resultset = selectUser.executeQuery();
                
                }catch (SQLException e)
             {             
                  e.printStackTrace();
                }
                return resultset ;
        }
          
        %>
        <%
String Name =new String();

if(request.getParameter("Name")!=null)
{
Name = request.getParameter("Name");
}

int Account = Integer.parseInt(request.getParameter("Account"));

user user1 = new user();
ResultSet users =user1.getUser(Name,Account);

        %>
        <table border="1">
            
            <tbody>
                <tr>
                    <td>Name</td>
                    <td>Account</td>
                </tr>
                <% while (users.next()) { %>
                <tr>
                    <td><%= users.getString("Name")%></td>
                    <td><%= users.getString(Account) %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
