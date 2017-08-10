<%-- 
    Document   : index
    Created on : 10 Aug, 2017, 1:06:10 AM
    Author     : Akshay Neekhra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deposit </title>
    </head>
    <body>
        <h1>Deposit</h1>
        <form name="myForm" action="display.jsp" method="POST">
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>Name:</td>
                        <td> <input type="text" name="Name" value="" size="20" /> </td>
                    </tr>
                    <tr>
                        <td>Account</td>
                        <td>  <input type="text" name="Account" value="" size="5" /> </td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Sumbit" name="Submit" />
            <input type="reset" value="Clear" name="Clear" />
        </form>
    </body>
</html>
