<%-- 
    Document   : UserComplaint
    Created on : 28 Dec, 2022, 12:39:57 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="SessionValidator.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Complaint</title>
        
        <%
            if(request.getParameter("btn_submit")!=null)
            {
                String sel="insert into tbl_complaint ";
                
            }
            %>
        
    </head>
    <body>
        <h1>User Complaint</h1>
        <table align="center">
            <tr>
                <td align="center">
                    Complaint 
                </td>
            </tr>
            <tr>
                <td>
                    <textarea name="txt_complaint" placeholder="Enter your complaint">
                        
                    </textarea>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <input type="submit" name="btn_submit">
                </td>
            </tr>
        </table>
        
    </body>
</html>
