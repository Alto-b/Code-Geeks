<%-- 
    Document   : EditProfile
    Created on : 2 Dec, 2022, 4:43:33 PM
    Author     : altob
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <%
            
            if(request.getParameter("btn_submit")!=null)
            { 
                
                String upQry="update tbl_user set user_name='"+request.getParameter("txt_name")+"', user_contact='"+request.getParameter("txt_contact")+"', user_email='"+request.getParameter("txt_email")+"' where user_id='"+session.getAttribute("gid")+"'";
                 //out.print(upQry);
                con.executeCommand(upQry);
               
            
            }
            String sel="select * from tbl_user where user_id='"+session.getAttribute("uid")+"'";
            System.out.println(sel);
            ResultSet rs=con.selectCommand(sel);
            rs.next();
          
            
            %>
    </head>
    <body>
        <h1>Edit Profile</h1>
        <form method="post">
        <table align="center">
            <tr>
                <td>
                    Name : 
                    <input type="text" name="txt_name" value="<%=rs.getString("user_name")%>">
                    
                    
                </td>
            </tr>
            <tr>
                <td>
                    Email :
                   <input type="text" name="txt_email" value="<%=rs.getString("user_email")%>">
                </td>
            </tr>
            <tr>
                <td>
                    Contact :
                    <input type="text" name="txt_contact" value="<%=rs.getString("user_contact")%>">
                </td>
            </tr>
          
            <tr>
                <td>
                    <input type="submit" name="btn_submit">
                </td>
            </tr>
        </table>
                
                
        </form>
    </body>
</html>
