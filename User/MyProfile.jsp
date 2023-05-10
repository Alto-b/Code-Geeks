<%-- 
    Document   : MyProfile
    Created on : 2 Dec, 2022, 4:32:47 PM
    Author     : altob
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <%
            
              if(request.getParameter("btn_submit")!=null)
            { 
                
                String upQry="update from tbl_user set user_name='"+request.getParameter("txt_name")+"', user_contact='"+request.getParameter("txt_contact")+"', user_email='"+request.getParameter("txt_email")+"' where user_id='"+session.getAttribute("gid")+"'";
                con.executeCommand(upQry);
            
            }
            String sel="select * from tbl_user where user_id='"+session.getAttribute("uid")+"'";
            System.out.println(sel);
            ResultSet rs=con.selectCommand(sel);
            rs.next();
          
            
            %>
    </head>
    <body>
        <h1 align="center">User Profile</h1>
        <table align="center">
            <tr>
                <td>
                    Name : <%=rs.getString("user_name")%>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Email :<%=rs.getString("user_email")%>
                </td>
            </tr>
            <tr>
                <td>
                    Contact : <%=rs.getString("user_contact")%>
                </td>
            </tr>
            <tr>
                <td>
                    Photo: <%=rs.getString("user_photo")%>
                </td>
            </tr>
           
        </table>
        
        
        
    </body>
</html>
